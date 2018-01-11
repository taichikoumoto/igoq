class DivideExcessCharge < ActiveRecord::Migration
  def change
    remove_column :phones, :excess_charge
    add_column :phones, :excess_charge_sms, :integer, null: false, default: 0
    add_column :phones, :excess_charge_tel, :integer, null: false, default: 0
  end
end
