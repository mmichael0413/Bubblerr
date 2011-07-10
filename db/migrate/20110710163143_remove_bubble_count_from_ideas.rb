class RemoveBubbleCountFromIdeas < ActiveRecord::Migration
  def self.up
    remove_column :ideas, :bubble_count
  end

  def self.down
    add_column :ideas, :bubble_count, :integer
  end
end
