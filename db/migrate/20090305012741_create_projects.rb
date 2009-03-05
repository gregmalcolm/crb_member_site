class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name, :null => false
      t.string :description
      
      t.timestamps
    end
    
    create_table :projects_members do |t|
      t.integer :member_id, :null => false
      t.integer :project_id, :null => false
    end
  end

  def self.down
    drop_table :projects_members
    drop_table :projects
  end
end
