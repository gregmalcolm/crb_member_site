class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.string :linkable_type, :null => false
      t.integer :linkable_id, :null => false
      t.string :url, :null => false
      t.string :name
      
      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
