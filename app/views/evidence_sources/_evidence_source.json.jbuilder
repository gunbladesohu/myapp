json.extract! evidence_source, :id, :bib_ref, :research_level, :created_at, :updated_at
json.url evidence_source_url(evidence_source, format: :json)