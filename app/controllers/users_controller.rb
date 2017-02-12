class UsersController < ApplicationController
    
    before_action :signed_in?
    
    def show
        @user = User.find(params[:id])
    end
    
    def following
        @title = "Following"
        @user = User.find(params[:id])
        @users = @user.followed_users.paginate(page: params[:page])
        render 'show_follow'
    end
    
    def followers
        @title = "Followers"
        @user = User.find(params[:id])
        @users = @user.followers.paginate(page: params[:page])
        render 'show_follow'
    end
    
end
