class RemoveBibRefFromEvidenceSources < ActiveRecord::Migration[5.0]
  def change
    remove_column :evidence_sources, :bib_ref, :string
  end
end
