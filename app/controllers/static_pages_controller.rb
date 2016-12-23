class StaticPagesController < ApplicationController
  def home

    
    if logged_in?

      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      logger.info "Processing the request..."    
      logger.info "Processing the request..."    
      logger.info "Processing the request..."    
      logger.info "Processing the request..."      
      logger.info @feed_items          
      
      @title = "My news"
      @user  = current_user
      @allMyNews = @user.received_news.paginate(page: params[:page])

    end
      @evidence_sources_last_ten = last_ten_evidence_itmes
      @evidence_sources_last_highest = lasthighest_items
  end

  def help
  end
  
  def about
  end
  
  def contact
  end

end
