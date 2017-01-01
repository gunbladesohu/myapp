class ModerateController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_action :moderate_user,   only: [:listModerateTask]  
  before_action :moderate_user,   only: :destroy
  
  def listModerateTask
    @user = current_user
    @evidence_sources = EvidenceSource.where("moderator_id = :moderator_id AND is_passed = 0", moderator_id: @user.id)
    @evidence_sources =  @evidence_sources.paginate(page: params[:page]).order(sort_column + " " + sort_direction).paginate(page: params[:page])      
    @tableType = "Moderate"
    render  "evidence_sources/index"
    
    
  end

  def accept
    @user = current_user
    @evidence_sources = EvidenceSource.find_by(id: params[:evidence_source_id])   
    @evidence_sources.is_passed = 1
    @evidence_sources.save
    redirect_to moderate_path    
  end
  
  def refuse
    @user = current_user
    @evidence_sources = EvidenceSource.find_by(id: params[:evidence_source_id])   
    @evidence_sources.is_passed = 2
    @evidence_sources.save
    redirect_to moderate_path    
  end
  


private

  def moderate_user
    redirect_to(root_url) unless current_user.moderator_role?
  end
end

