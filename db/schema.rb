# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100822103908) do

  create_table "answers", :force => true do |t|
    t.string   "name"
    t.integer  "question_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["question_id"], :name => "index_answers_on_question_id"

  create_table "answers_bodies", :id => false, :force => true do |t|
    t.integer "answer_id", :null => false
    t.integer "body_id",   :null => false
  end

  add_index "answers_bodies", ["answer_id"], :name => "index_answers_bodies_on_answer_id"
  add_index "answers_bodies", ["body_id"], :name => "index_answers_bodies_on_body_id"

  create_table "bodies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bodies_products", :id => false, :force => true do |t|
    t.integer "body_id"
    t.integer "product_id"
  end

  add_index "bodies_products", ["body_id"], :name => "index_bodies_products_on_body_id"
  add_index "bodies_products", ["product_id"], :name => "index_bodies_products_on_product_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "products_sections", :id => false, :force => true do |t|
    t.integer "product_id"
    t.integer "section_id"
  end

  add_index "products_sections", ["product_id"], :name => "index_products_sections_on_product_id"
  add_index "products_sections", ["section_id"], :name => "index_products_sections_on_section_id"

  create_table "questions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name",              :limit => 40
    t.string   "authorizable_type", :limit => 40
    t.integer  "authorizable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "things", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "thingable_id",      :null => false
    t.string   "thingable_type"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "things", ["thingable_id"], :name => "index_things_on_thingable_id"

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "username"
  end

end
