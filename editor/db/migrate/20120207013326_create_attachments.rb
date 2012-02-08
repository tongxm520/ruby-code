class CreateAttachments < ActiveRecord::Migration
  def self.up
    create_table "attachments", :force => true do |t|
      t.string   "type"
      t.string   "attachable_id"
      t.string   "attachable_type"
      t.string   "content_type"
      t.string   "filename"
      t.string   "thumbnail"
      t.integer  "size"
      t.integer  "user_id"
      t.string   "large_filename"

      t.timestamps
    end

    add_index "attachments", ["attachable_id", "attachable_type"], :name => "index_attachments_on_attachable_id_and_attachable_type"
    add_index "attachments", ["user_id"], :name => "index_attachments_on_user_id"
    
  end
 

  def self.down
    drop_table :attachments
  end
end
