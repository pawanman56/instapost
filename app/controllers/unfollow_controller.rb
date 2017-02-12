class UnfollowController < ApplicationController
    
    before_action :authenticate_user!
    
    def create
        @user = User.find(params[:user_id])
        @user.stop_following current_user
        
        respond_to do |format|
            format.html { redirect_to users_path }
            format.js {}
        end
    end
    
end
