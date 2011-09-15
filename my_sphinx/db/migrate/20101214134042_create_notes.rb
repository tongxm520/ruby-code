class CreateNotes < ActiveRecord::Migration
  def self.up
    create_table :notes do |t|

      t.string   "title"
		  t.text     "body", :limit => 16777215
		  t.integer  "user_id"
		  t.integer  "category_id", :default => 0
		  t.text     "textile", :limit => 16777215
		  t.integer  "read_count", :default => 0
		  t.boolean  "star", :default => false
		  t.datetime "visited_at"
		  t.boolean  "is_stick", :default => false
		  t.integer  "discuss_count", :default => 0
		  t.boolean  "is_share", :default => false
		  t.integer  "view_count", :default => 0
		  
		  t.boolean  "delta", :default => true,  :null => false
      
      t.timestamps
    end
  end

  def self.down
    drop_table :notes
  end
end
