class ChangeColumnEvidenceSourceSubmitterId < ActiveRecord::Migration[5.0]
  def change
    change_column :evidence_sources, :submitter_id, :integer, null: false
  end
end
