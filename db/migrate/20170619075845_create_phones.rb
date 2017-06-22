class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :company, null: false
      t.string :number, null: false, unique: true
      t.integer :price, null: false
      t.string :user
      t.boolean :firstmonth, null: false, default: false
      t.timestamps
    end
  end
end
