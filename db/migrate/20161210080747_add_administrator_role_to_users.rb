class AddAdministratorRoleToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :administrator_role, :boolean
  end
end
