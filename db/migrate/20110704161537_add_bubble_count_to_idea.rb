class AddBubbleCountToIdea < ActiveRecord::Migration
  def self.up
    add_column :ideas, :bubble_count, :integer
  end

  def self.down
    remove_column :ideas, :bubble_count
  end
end
