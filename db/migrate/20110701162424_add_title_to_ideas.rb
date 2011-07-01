class AddTitleToIdeas < ActiveRecord::Migration
  def self.up
    add_column :ideas, :title, :string
  end

  def self.down
    remove_column :ideas, :title
  end
end
