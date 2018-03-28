class ChangeCompanyColumns < ActiveRecord::Migration
  def change
    remove_column :phones, :option_discount
    add_column :companies, :transfer_description, :string, default: ''
    add_column :companies, :payment_deadline, :string, default: ''
  end
end
