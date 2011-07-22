class AddNameToUserRoles < ActiveRecord::Migration
  def self.up
    add_column :user_roles, :name, :string
  end

  def self.down
    remove_column :user_roles, :name
  end
end
