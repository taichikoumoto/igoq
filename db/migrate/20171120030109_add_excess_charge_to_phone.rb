class AddExcessChargeToPhone < ActiveRecord::Migration
  def change
    add_column :phones, :excess_charge, :integer, null: false, default: 0
  end
end
