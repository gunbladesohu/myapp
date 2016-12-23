class AddBibliographicReferenceToEvidenceSources < ActiveRecord::Migration[5.0]
  def change
    add_column :evidence_sources, :author, :string
    add_column :evidence_sources, :year, :integer
    add_column :evidence_sources, :source, :string
    add_column :evidence_sources, :journal_book, :string
    add_column :evidence_sources, :publisher, :string
    add_column :evidence_sources, :DOI, :string
    add_column :evidence_sources, :number, :integer
    add_column :evidence_sources, :volume, :integer
    add_column :evidence_sources, :page_numbers, :integer
  end
end
