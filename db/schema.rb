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

ActiveRecord::Schema.define(version: 20170324111119) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "usr_buyer_billing_adderesses", force: :cascade do |t|
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "city"
    t.integer  "zip_code"
    t.string   "country"
    t.integer  "usr_buyer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["usr_buyer_id"], name: "index_usr_buyer_billing_adderesses_on_usr_buyer_id", using: :btree
  end

  create_table "usr_buyer_delivery_adderesses", force: :cascade do |t|
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "city"
    t.integer  "zip_code"
    t.string   "country"
    t.integer  "usr_buyer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["usr_buyer_id"], name: "index_usr_buyer_delivery_adderesses_on_usr_buyer_id", using: :btree
  end

  create_table "usr_buyer_payment_methods", force: :cascade do |t|
    t.string   "card_name"
    t.string   "encrypted_card_number"
    t.string   "encrypted_cvv"
    t.string   "encrypted_expiry_date"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "usr_buyers", force: :cascade do |t|
    t.date     "dob"
    t.date     "anniversary"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "gender"
    t.string   "contact_number"
    t.integer  "usr_contact_id"
    t.string   "user_image"
    t.index ["usr_contact_id"], name: "index_usr_buyers_on_usr_contact_id", using: :btree
  end

  create_table "usr_contact_roles", force: :cascade do |t|
    t.integer  "usr_role_id"
    t.integer  "usr_contact_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["usr_contact_id"], name: "index_usr_contact_roles_on_usr_contact_id", using: :btree
    t.index ["usr_role_id"], name: "index_usr_contact_roles_on_usr_role_id", using: :btree
  end

  create_table "usr_contact_venders", force: :cascade do |t|
    t.integer  "usr_contacts_id"
    t.integer  "usr_vender_properties_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "usr_contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "mobile"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "image"
    t.index ["email"], name: "index_usr_contacts_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_usr_contacts_on_reset_password_token", unique: true, using: :btree
  end

  create_table "usr_permissions", force: :cascade do |t|
    t.string   "permission_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "usr_role_permissions", force: :cascade do |t|
    t.integer  "usr_role_id"
    t.integer  "usr_permission_id"
    t.string   "value"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["usr_permission_id"], name: "index_usr_role_permissions_on_usr_permission_id", using: :btree
    t.index ["usr_role_id"], name: "index_usr_role_permissions_on_usr_role_id", using: :btree
  end

  create_table "usr_roles", force: :cascade do |t|
    t.string   "role_name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "usr_vender_properties", force: :cascade do |t|
    t.string   "specifiedArea"
    t.string   "mobile"
    t.integer  "shopId"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_foreign_key "usr_buyer_billing_adderesses", "usr_buyers"
  add_foreign_key "usr_buyer_delivery_adderesses", "usr_buyers"
  add_foreign_key "usr_buyers", "usr_contacts"
end
