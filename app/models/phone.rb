# frozen_string_literal: true

class Phone < ApplicationRecord
  belongs_to :company

  class << self
    def import(file)
      CSV.foreach(file.path, headers: true) do |row|
        phone = Phone.new
        phone.number = row[0] || '-'
        phone.price = row[5] || '-'
        phone.company_id = Company.find_by(name: row[11])&.id || nil
        phone.user = row[13] || '-'
        phone.start_date = parsed_date(row[16]) if row[16].present?
        phone.save!
      end
    end

    private

    def parsed_date(string)
      arr = string.split('/')
      Date.new(arr[0].to_i, arr[1].to_i, arr[2].to_i)
    end
  end
end
