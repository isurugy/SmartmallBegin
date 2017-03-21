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

ActiveRecord::Schema.define(version: 20170321035319) do

  create_table "usr_branches", force: :cascade do |t|
    t.string   "address"
    t.integer  "usr_vender_property_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["usr_vender_property_id"], name: "index_usr_branches_on_usr_vender_property_id"
  end

  create_table "usr_contact_venders", force: :cascade do |t|
    t.integer  "UsrContact_id"
    t.integer  "UsrVenderProperty_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["UsrContact_id"], name: "index_usr_contact_venders_on_UsrContact_id"
    t.index ["UsrVenderProperty_id"], name: "index_usr_contact_venders_on_UsrVenderProperty_id"
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "image"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "provider"
    t.string   "uid"
    t.index ["confirmation_token"], name: "index_usr_contacts_on_confirmation_token", unique: true
    t.index ["email"], name: "index_usr_contacts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usr_contacts_on_reset_password_token", unique: true
  end

  create_table "usr_vender_properties", force: :cascade do |t|
    t.string   "specifiedArea"
    t.string   "mobile"
    t.integer  "shopId"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
