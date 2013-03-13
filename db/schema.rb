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

ActiveRecord::Schema.define(:version => 20130313081715) do

  create_table "admins", :force => true do |t|
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
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "consumers", :force => true do |t|
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
  end

  add_index "consumers", ["email"], :name => "index_consumers_on_email", :unique => true
  add_index "consumers", ["reset_password_token"], :name => "index_consumers_on_reset_password_token", :unique => true

  create_table "customers", :force => true do |t|
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
  end

  add_index "customers", ["email"], :name => "index_customers_on_email", :unique => true
  add_index "customers", ["reset_password_token"], :name => "index_customers_on_reset_password_token", :unique => true

  create_table "departments", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "contact_person"
    t.string   "contact_email"
    t.integer  "customer_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "interview_answers", :force => true do |t|
    t.integer  "interview_question_id"
    t.text     "user_answer"
    t.string   "user_name"
    t.string   "user_email"
    t.boolean  "newsletter"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "interview_questions", :force => true do |t|
    t.text     "question_text"
    t.integer  "display_count"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.boolean  "visible",       :default => true
  end

  create_table "job_answers", :force => true do |t|
    t.integer  "job_posting_id"
    t.integer  "consumer_id"
    t.string   "name"
    t.text     "profile"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "interface_type"
    t.string   "status"
    t.integer  "interface_id"
  end

  create_table "job_postings", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "requirements"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "customer_id"
    t.integer  "department_id"
    t.string   "location"
  end

  create_table "request_messages", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "newsletter"
  end

  create_table "xing_interfaces", :force => true do |t|
    t.string   "profile_url"
    t.integer  "profile_id"
    t.string   "username"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
