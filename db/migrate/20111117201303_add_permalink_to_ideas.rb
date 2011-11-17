class AddPermalinkToIdeas < ActiveRecord::Migration
  def self.up
    add_column :ideas, :permalink, :string
  end

  def self.down
    remove_column :ideas, :permalink
  end
end
