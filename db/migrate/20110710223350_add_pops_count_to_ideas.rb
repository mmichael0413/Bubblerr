class AddPopsCountToIdeas < ActiveRecord::Migration
  def self.up
    add_column :ideas, :pops_count, :integer
  end

  def self.down
    remove_column :ideas, :pops_count
  end
end
