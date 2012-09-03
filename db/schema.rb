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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120903074004) do

  create_table "alergies", :force => true do |t|
    t.integer  "patient_id"
    t.string   "irritant"
    t.string   "symptoms"
    t.string   "remedy"
    t.string   "doctor"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "doctors", :force => true do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "address"
    t.string   "specialty"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "medications", :force => true do |t|
    t.integer  "patient_id"
    t.string   "condition"
    t.string   "drug"
    t.string   "dossage"
    t.string   "duration"
    t.string   "doctor"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patients", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "age"
    t.string   "gender"
    t.string   "origin"
    t.string   "address"
    t.string   "tribe"
    t.string   "occupation"
    t.string   "religion"
    t.string   "phone"
    t.string   "nextofkin"
    t.string   "family_history"
    t.string   "past_medical_record"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "socials", :force => true do |t|
    t.integer  "patient_id"
    t.string   "condition"
    t.string   "reason"
    t.string   "treatment"
    t.string   "doctor"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "surgicals", :force => true do |t|
    t.integer  "patient_id"
    t.string   "condition"
    t.string   "procedure"
    t.string   "surgeon"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "username"
    t.boolean  "isadmin"
    t.string   "type"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
