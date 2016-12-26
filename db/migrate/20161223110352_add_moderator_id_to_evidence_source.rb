class AddModeratorIdToEvidenceSource < ActiveRecord::Migration[5.0]
  def change
    add_column :evidence_sources, :moderator_id, :integer
  end
end
