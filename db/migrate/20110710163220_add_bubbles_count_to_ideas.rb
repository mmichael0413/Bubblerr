class AddBubblesCountToIdeas < ActiveRecord::Migration
  def self.up
    add_column :ideas, :bubbles_count, :integer
  end

  def self.down
    remove_column :ideas, :bubbles_count
  end
end
