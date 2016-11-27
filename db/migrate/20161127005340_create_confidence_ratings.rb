class CreateConfidenceRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :confidence_ratings do |t|
      t.string :confidence_level
      t.string :reason
      t.string :rater
      t.datetime :insertTime

      t.timestamps
    end
  end
end
