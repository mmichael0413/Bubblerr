class RemoveUserRoleIdFromUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :user_role_id
  end

  def self.down
    add_column :users, :user_role_id, :integer
  end
end
