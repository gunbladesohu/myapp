module EvidenceSourcesHelper
    
  def last_ten_evidence_itmes
   EvidenceSource.order(created_at: :desc).first(10)
  end
  
  def lasthighest_items
   EvidenceSource.order(rating: :desc).first(10)
  end    
    
end
