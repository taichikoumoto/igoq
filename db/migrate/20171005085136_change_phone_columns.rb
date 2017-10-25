class ChangePhoneColumns < ActiveRecord::Migration[5.0]
  def up
    remove_column :phones, :firstmonth
    remove_column :phones, :company
    add_reference :phones, :company, index: true
    add_foreign_key :phones, :companies
    add_column :phones, :start_date, :date
  end

  def down
    add_column :phones, :firstmonth, :string
    add_column :phones, :company, :string
    remove_reference :phones, :company
    remove_column :phones, :start_date
  end
end
