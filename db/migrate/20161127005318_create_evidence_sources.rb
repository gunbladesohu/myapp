class CreateEvidenceSources < ActiveRecord::Migration[5.0]
  def change
    create_table :evidence_sources do |t|
      t.string :bib_ref
      t.string :research_level

      t.timestamps
    end
  end
end
