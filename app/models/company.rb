# frozen_string_literal: true

class Company < ApplicationRecord
  has_many :phones

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      if Company.find_by(name: row[11]).nil?
        company = Company.new
        company.name = row[11]
        company.save
      end
    end
  end
end
