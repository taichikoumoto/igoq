
# frozen_string_literal: true

class ImportExcessService
  class << self
    def execute!(csv_file)
      header_to_sym_map = {
        '電話番号' => :tel_number,
        '通信料　メール（ＳＭＳ）（ＹＭ／他社宛）' => :sms_charge,
        '通話料　通信サービス「０５７０等」' => :tel_charge
      }
      header_converter = lambda { |h| header_to_sym_map[h] }

      CSV.foreach(csv_file.path, headers: true, header_converters: header_converter, encoding: 'Shift_JIS:UTF-8') do |row|
        number = row[:tel_number].delete('-')
        phone = Phone.find_by(number: number)
        if phone
          phone.excess_charge_sms = row[:sms_charge].to_i
          phone.excess_charge_tel = row[:tel_charge].to_i
          phone.save!
        end
      end
    end
  end
end
