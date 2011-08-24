class AddCommentsCountToIdea < ActiveRecord::Migration
  def self.up
    add_column :ideas, :comments_count, :integer
  end

  def self.down
    remove_column :ideas, :comments_count
  end
end
