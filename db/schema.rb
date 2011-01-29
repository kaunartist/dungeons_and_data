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

ActiveRecord::Schema.define(:version => 20110129185649) do

  create_table "comments", :force => true do |t|
    t.text     "text",       :null => false
    t.integer  "quest_id",   :null => false
    t.integer  "user_id",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["quest_id"], :name => "index_comments_on_quest_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "datapoints", :force => true do |t|
    t.text     "message"
    t.float    "latitude",          :null => false
    t.float    "longitude",         :null => false
    t.string   "location_source",   :null => false
    t.string   "location_accuracy"
    t.integer  "quest_id",          :null => false
    t.integer  "user_id",           :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "datapoints", ["quest_id"], :name => "index_datapoints_on_quest_id"
  add_index "datapoints", ["user_id"], :name => "index_datapoints_on_user_id"

  create_table "quests", :force => true do |t|
    t.string   "title",              :null => false
    t.text     "description",        :null => false
    t.integer  "minimum_datapoints", :null => false
    t.time     "expired_at",         :null => false
    t.integer  "reward_id",          :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quests", ["reward_id"], :name => "index_quests_on_reward_id"

  create_table "rewards", :force => true do |t|
    t.integer  "experience", :null => false
    t.integer  "quest_id",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rewards", ["quest_id"], :name => "index_rewards_on_quest_id"

  create_table "users", :force => true do |t|
    t.string   "name",                                                :null => false
    t.string   "title"
    t.integer  "experience"
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
