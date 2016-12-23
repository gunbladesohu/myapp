class AddRatingToEvidenceSources < ActiveRecord::Migration[5.0]
  def change
    add_column :evidence_sources, :rating, :integer
  end
end
