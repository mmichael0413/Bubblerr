class AddUserIdToUserRoles < ActiveRecord::Migration
  def self.up
    add_column :user_roles, :user_id, :integer
  end

  def self.down
    remove_column :user_roles, :user_id
  end
end
