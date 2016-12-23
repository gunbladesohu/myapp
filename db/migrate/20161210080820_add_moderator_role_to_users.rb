class AddModeratorRoleToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :moderator_role, :boolean
  end
end
