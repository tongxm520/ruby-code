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

ActiveRecord::Schema.define(:version => 20101229140628) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.integer  "user_id"
    t.integer  "notes_count"
    t.integer  "position"
    t.boolean  "shared",      :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "memo"
    t.boolean  "delta",      :default => true, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", :force => true do |t|
    t.string   "title"
    t.text     "body",          :limit => 2147483647
    t.integer  "user_id"
    t.integer  "category_id",                         :default => 0
    t.text     "textile",       :limit => 2147483647
    t.integer  "read_count",                          :default => 0
    t.boolean  "star",                                :default => false
    t.datetime "visited_at"
    t.boolean  "is_stick",                            :default => false
    t.integer  "discuss_count",                       :default => 0
    t.boolean  "is_share",                            :default => false
    t.integer  "view_count",                          :default => 0
    t.boolean  "delta",                               :default => true,  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
