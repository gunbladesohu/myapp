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
    end
  end

  def help
  end
  
  def about
  end
  
  def contact
  end

end
