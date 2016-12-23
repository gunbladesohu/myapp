class EvidenceSource < ApplicationRecord
  belongs_to :submitter, class_name: "User"
  belongs_to :moderator, class_name: "User"
  
  validates :submitter, presence: true
       
end
