class RemoveVisibleFromIdeas < ActiveRecord::Migration
  def self.up
    remove_column :ideas, :visible
  end

  def self.down
    add_column :ideas, :visible, :boolean
  end
end
