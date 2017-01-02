class ModerateController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_action :moderate_user,   only: [:listModerateTask]  
  before_action :moderate_user,   only: :destroy
  before_action :correct_user, only: [:accept, :refuse]
  
  def listModerateTask
    @user = current_user
    @evidence_sources = EvidenceSource.where("moderator_id = :moderator_id AND is_passed = 0", moderator_id: @user.id)
    @evidence_sources =  @evidence_sources.paginate(page: params[:page]).order(sort_column + " " + sort_direction).paginate(page: params[:page])      
    @tableType = "Moderate"
    render  "evidence_sources/index"
    
    
  end

  def accept
    @evidence_sources.is_passed = 1
    @evidence_sources.save
    redirect_to moderate_path    
  end
  
  def refuse
    @evidence_sources.is_passed = 2
    @evidence_sources.save
    redirect_to moderate_path    
  end
  


private

  def moderate_user
    redirect_to(root_url) unless current_user.moderator_role?
  end
  
  def correct_user
    @evidence_sources = current_user.moderatted_evidence_source.find_by(id: params[:evidence_source_id])
    redirect_to root_url if @evidence_sources.nil?
  end

  # Follows a user.
  def notice_submitter(evidence_source_item)
    active_relationships.create(followed_id: other_user.id)
  end

end

