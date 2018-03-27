class AddColumnsToPhoneAndCompany < ActiveRecord::Migration
  def change
    add_column :phones, :option_price, :integer, default: 0
    add_column :phones, :option_discount, :integer, default: 0
    add_column :phones, :discount, :integer, default: 0
    add_column :companies, :is_account_transfer, :boolean, default: false
    add_column :companies, :notice_to_transfer, :string, default: ''
  end
end
