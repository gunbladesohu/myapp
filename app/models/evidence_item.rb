class EvidenceItem < ApplicationRecord
  belongs_to :evidence_source, class_name: "EvidenceSource",
                                foreign_key: "evidence_source_id"
  validates :evidence_source_id, presence: true

end
   