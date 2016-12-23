class AddAnalystRoleToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :analyst_role, :boolean
  end
end
