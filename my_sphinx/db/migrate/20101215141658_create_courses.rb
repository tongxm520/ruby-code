class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
    
      t.integer :user_id
      t.string :name
      t.text :memo
      
      t.boolean  "delta", :default => true,  :null => false
      
      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
