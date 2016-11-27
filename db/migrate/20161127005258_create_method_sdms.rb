class CreateMethodSdms < ActiveRecord::Migration[5.0]
  def change
    create_table :method_sdms do |t|
      t.string :name
      t.string :description
      t.datetime :insertTime

      t.timestamps
    end
  end
end
