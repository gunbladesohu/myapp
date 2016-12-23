class AddSeacherRoleToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :searcher_role, :boolean
  end
end
