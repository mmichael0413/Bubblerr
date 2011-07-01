class AddContentToIdeas < ActiveRecord::Migration
  def self.up
    add_column :ideas, :content, :text
  end

  def self.down
    remove_column :ideas, :content
  end
end
