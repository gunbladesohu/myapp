class ChangeColumnEvidenceSourceYear < ActiveRecord::Migration[5.0]
  def change
    change_column :evidence_sources, :year, :date
  end
end
