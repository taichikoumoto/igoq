class AddExcessChargeToPhone < ActiveRecord::Migration[5.1]
  def change
    add_column :phones, :excess_charge, :integer, null: false, default: 0
  end
end
