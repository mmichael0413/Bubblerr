class AddUserRoleIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :user_role_id, :integer
  end

  def self.down
    remove_column :users, :user_role_id
  end
end
