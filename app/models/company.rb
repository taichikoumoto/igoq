# frozen_string_literal: true

class Company < ApplicationRecord
  has_many :phones, dependent: :destroy

  def self.import(phones_data, accounts_data)
    phones_data.drop(2).each do |row|
      name = row[11]
      # SBSゼンツウはマージ
      name = 'SBSゼンツウ株式会社' if name =~ /SBSゼンツウ/
      next if name =~ /SBS即配/
      next if row[5].to_i.zero? || row[16].blank?
      company = Company.find_or_initialize_by(name: name)
      company.save
    end
    accounts_data.drop(2).each do |row|
      name = row[0]
      # SBSゼンツウはマージ
      name = 'SBSゼンツウ株式会社' if name =~ /SBSゼンツウ/
      company = Company.find_by(name: name)
      next if company.blank?
      if row[14] == '〇'
        company.is_account_transfer = true
        company.notice_to_transfer = row[13]
        company.save
      end
    end
  end

  def sum_of_charge
    sum_of_phone_price + sum_of_excess_charge + sum_of_option_price - sum_of_option_discount
  end

  def sum_of_phone_price
    phones.map(&:price).inject(:+) || 0
  end

  def sum_of_2gb
    phones.map do |phone|
      phone.price == 2980 ? 2980 : 0
    end.inject(:+) || 0
  end

  def sum_of_5gb
    phones.map do |phone|
      phone.price == 3980 ? 3980 : 0
    end.inject(:+) || 0
  end

  def num_of_2gb
    phones.to_a.count { |phone| phone.price == 2980 }
  end

  def num_of_5gb
    phones.to_a.count { |phone| phone.price == 3980 }
  end

  def sum_of_excess_charge
    sum_of_excess_charge_sms + sum_of_excess_charge_tel
  end

  def sum_of_excess_charge_sms
    phones.map(&:excess_charge_sms).inject(:+) || 0
  end

  def sum_of_excess_charge_tel
    phones.map(&:excess_charge_tel).inject(:+) || 0
  end

  def sum_of_option_price
    phones.map(&:option_price).inject(:+) || 0
  end

  def sum_of_option_discount
    phones.map(&:option_discount).inject(:+) || 0
  end

  def num_of_option_price
    phones.to_a.count { |phone| phone.option_price > 0 }
  end

  def num_of_option_discount
    phones.to_a.count { |phone| phone.option_discount > 0 }
  end

  def total_pages
    sliced_phones_array_for_invoice.length + 1
  end

  def sliced_phones_array_for_invoice
    items_number_of_first_page = (18 / number_of_price_items_per_phone).ceil
    items_per_page = (27 / number_of_price_items_per_phone).ceil
    top_phones = phones.take(items_number_of_first_page)
    left_phones = phones.drop(items_number_of_first_page)
                      .each_slice(items_per_page)
                      .to_a
    left_phones.unshift(top_phones)
  end

  def number_of_price_items_per_phone
    return 1 if phones.blank?
    phones.map do |phone|
      number_of_items = 1
      number_of_items += 1 if phone.option_price > 0
      number_of_items += 1 if phone.option_discount > 0
      number_of_items += 1 if phone.discount > 0
      number_of_items
    end.max
  end
end
