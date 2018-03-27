# frozen_string_literal: true

class Phone < ApplicationRecord
  belongs_to :company

  class << self
    def import(data)
      data.drop(2).each do |row|
        name = row[11]
        # SBSゼンツウはマージ
        name = 'SBSゼンツウ株式会社' if name =~ /SBSゼンツウ/
        next if Company.find_by(name: name).blank?

        # FIXME: この辺りのロジックリファクタリング
        if row[16].present?
          start_date = parsed_date(row[16])
          next if start_date >= Date.current.beginning_of_month + 2.months
        else
          # 課金開始日がない場合は未契約と判断
          next
        end
        phone = Phone.new
        phone.number = row[0] || '-'
        phone.price = row[5] || '-'
        phone.company_id = Company.find_by(name: name).try(:id) || nil
        phone.user = row[13] || '-'
        phone.excess_charge_sms = 0
        phone.excess_charge_tel = 0
        phone.start_date = parsed_date(row[16])

        phone.discount = row[2]
        phone.option_price = row[3] == 'IP無線' ? 500 : 0
        phone.option_discount = row[4]

        phone.save!
      end
    end

    private

    def parsed_date(string)
      arr = string.split('/')
      begin
        Date.new(arr[0].to_i, arr[1].to_i, arr[2].to_i)
      rescue StandardError
        Date.current
      end
    end
  end
end
