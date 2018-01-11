# frozen_string_literal: true

class Company < ApplicationRecord
  has_many :phones, dependent: :destroy

  def self.import(data)
    data.drop(2).each do |row|
      name = row[11]
      # SBSゼンツウはマージ
      name = 'SBSゼンツウ' if name =~ /SBSゼンツウ/
      next if name =~ /SBS即配/
      next if row[5].to_i == 0
      company = Company.find_or_initialize_by(name: name)
      company.save
    end
  end

  def sum_of_charge
    sum_of_phone_price + sum_of_excess_charge
  end

  def sum_of_phone_price
    phones.map(&:price).inject(:+)
  end

  def sum_of_excess_charge
    sum_of_excess_charge_sms + sum_of_excess_charge_tel
  end

  def sum_of_excess_charge_sms
    phones.map(&:excess_charge_sms).inject(:+)
  end

  def sum_of_excess_charge_tel
    phones.map(&:excess_charge_tel).inject(:+)
  end

  def sliced_phones_array_for_invoice
    top_phones = phones.take(22)
    left_phones = phones.drop(22).each_slice(29).to_a
    left_phones.unshift(top_phones)
  end
end
