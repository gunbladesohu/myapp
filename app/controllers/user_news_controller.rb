class UserNewsController < ApplicationController
  before_action :correct_user,   only: :destroy  
  def destroy
   #@usernews.destroy
   @usernews.read =true
   @usernews.save
    flash[:success] = "usernews deleted"
    redirect_to request.referrer || root_url
  end
  


  private

    def correct_user
      @usernews = current_user.received_news.find_by(id: params[:id])
      redirect_to root_url if @usernews.nil?
    end
end
