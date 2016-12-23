class CreateUserNews < ActiveRecord::Migration[5.0]
  def change
    create_table :user_news do |t|
      t.string :content
      t.integer :sender_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
