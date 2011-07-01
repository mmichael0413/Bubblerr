class AddVisibleToIdeas < ActiveRecord::Migration
  def self.up
    add_column :ideas, :visible, :boolean
  end

  def self.down
    remove_column :ideas, :visible
  end
end
