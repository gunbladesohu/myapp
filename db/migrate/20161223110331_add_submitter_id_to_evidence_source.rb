class AddSubmitterIdToEvidenceSource < ActiveRecord::Migration[5.0]
  def change
    add_column :evidence_sources, :submitter_id, :integer
  end
end
