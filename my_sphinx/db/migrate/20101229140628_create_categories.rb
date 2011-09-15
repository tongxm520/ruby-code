class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :name
      t.integer :parent_id, :user_id, :notes_count, :position
      t.boolean :shared, :default => false
      
      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
