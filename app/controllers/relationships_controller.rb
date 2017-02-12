class RelationshipsController < ApplicationController
    
    before_action :signed_in?

    def create
        @user = User.find(params[:relationship][:followed_id])
        current_user.follow!(@user)
        respond_to do |format|
          format.html { redirect_to @user }
          format.js {}
        end
        
        @post = Post.find(params[:post_id])
        @post.liked_by current_user
        
    end
    
    def destroy
        @user = Relationship.find(params[:id]).followed
        current_user.unfollow!(@user)
        respond_to do |format|
          format.html { redirect_to @user }
          format.js {}
        end
    end
    
end
