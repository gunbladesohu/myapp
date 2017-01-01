class AddIsPassedToEvidenceSource < ActiveRecord::Migration[5.0]
  def change
    add_column :evidence_sources, :is_passed, :integer
  end
end
