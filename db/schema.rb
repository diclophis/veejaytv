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

ActiveRecord::Schema.define(:version => 20081212111632) do

  create_table "activities", :force => true do |t|
    t.boolean  "public"
    t.integer  "item_id"
    t.integer  "person_id"
    t.string   "item_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["item_id"], :name => "index_activities_on_item_id"
  add_index "activities", ["item_type"], :name => "index_activities_on_item_type"
  add_index "activities", ["person_id"], :name => "index_activities_on_person_id"

  create_table "episodes", :force => true do |t|
    t.integer  "person_id"
    t.string   "title"
    t.datetime "airs_on"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug",                            :null => false
    t.integer  "total_duration",                  :null => false
    t.integer  "ratings_count",  :default => 0,   :null => false
    t.float    "rating",         :default => 0.0, :null => false
  end

  create_table "friendships", :force => true do |t|
    t.integer  "friend_id",   :null => false
    t.datetime "created_at"
    t.datetime "accepted_at"
    t.integer  "person_id",   :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "identity_url"
    t.string   "email"
    t.string   "nickname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "activated",                               :default => false
    t.string   "activation_code"
    t.text     "biography"
    t.text     "email_autocompletions"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.datetime "activated_at"
    t.string   "state",                                   :default => "passive"
    t.string   "facebook_user_id"
    t.string   "facebook_infinite_session"
  end

  add_index "people", ["nickname"], :name => "index_people_on_nickname", :unique => true

  create_table "ratings", :force => true do |t|
    t.integer  "ratable_id",   :null => false
    t.string   "ratable_type", :null => false
    t.integer  "rater_id",     :null => false
    t.string   "rater_type",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "value_id",     :null => false
  end

  create_table "redirects", :force => true do |t|
    t.string   "permalink"
    t.integer  "person_id"
    t.text     "nonce"
    t.string   "nonce_url"
    t.string   "default_url"
    t.datetime "nonced_on"
    t.datetime "expires_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type"], :name => "index_taggings_on_taggable_id_and_taggable_type"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "videos", :force => true do |t|
    t.integer  "episode_id"
    t.string   "yahoo_id"
    t.string   "yahoo_title"
    t.integer  "yahoo_duration"
    t.string   "yahoo_images"
    t.integer  "yahoo_copyright_year"
    t.boolean  "yahoo_explicit"
    t.integer  "yahoo_flags"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "yahoo_video"
    t.text     "remote_video"
    t.text     "comment"
  end

end
