class AddFixedVisibleToIdeas < ActiveRecord::Migration
  def self.up
    add_column :ideas, :visible, :boolean, :default => false
  end

  def self.down
    remove_column :ideas, :visible
  end
end
