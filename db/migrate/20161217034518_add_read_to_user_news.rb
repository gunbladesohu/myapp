class AddReadToUserNews < ActiveRecord::Migration[5.0]
  def change
    add_column :user_news, :read, :boolean
  end
end
