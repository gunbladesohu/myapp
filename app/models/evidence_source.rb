class EvidenceSource < ApplicationRecord
  belongs_to :submitter, class_name: "User"
  belongs_to :moderator, class_name: "User"
  
  validates :submitter_id, presence: true
  
  attr_accessor :submitter_name     
end
