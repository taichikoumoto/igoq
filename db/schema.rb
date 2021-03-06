# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180328032552) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_account_transfer",  default: false
    t.string   "notice_to_transfer",   default: ""
    t.string   "transfer_description", default: ""
    t.string   "payment_deadline",     default: ""
  end

  create_table "phones", force: :cascade do |t|
    t.string   "number",                        null: false
    t.integer  "price",                         null: false
    t.string   "user"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.date     "start_date"
    t.integer  "excess_charge_sms", default: 0, null: false
    t.integer  "excess_charge_tel", default: 0, null: false
    t.integer  "option_price",      default: 0
    t.integer  "discount",          default: 0
  end

  add_index "phones", ["company_id"], name: "index_phones_on_company_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "phones", "companies"
end
