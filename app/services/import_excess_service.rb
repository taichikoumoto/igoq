
class ImportExcessService
  class << self
    def execute!(csv_file)
      CSV.foreach(csv_file.path, headers: true, encoding: 'Shift_JIS:UTF-8') do |row|
        number = row[2].gsub('-', '')
        phone = Phone.find_by(number: number)
        if phone
          phone.excess_charge = row[9].to_i
          phone.save!
        end
      end
    end
  end
end