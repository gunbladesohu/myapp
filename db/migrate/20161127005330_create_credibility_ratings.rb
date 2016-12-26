class CreateCredibilityRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :credibility_ratings do |t|
      t.string :credibility_level
      t.string :reason
      t.string :rater

      t.timestamps
    end
  end
end
