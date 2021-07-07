class SessionsController < ApplicationController
    def create
        new_user = User.find(username: params[:username])
        session[:user] = new_user.id
        render json: new_user
    end
end
