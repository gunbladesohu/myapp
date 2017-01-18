class EvidenceSource < ApplicationRecord
  belongs_to :submitter, class_name: "User"
  belongs_to :moderator, class_name: "User"
  
  validates :submitter_id, presence: true
  
  attr_accessor :submitter_name

  has_many :evidence_items,
           foreign_key: "evidence_source_id",
           dependent:   :destroy

end
