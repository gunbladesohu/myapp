class AddEvidenceSourceIdToEvidenceItem < ActiveRecord::Migration[5.0]
  def change
    add_column :evidence_items, :evidence_source_id, :integer
  end
end
