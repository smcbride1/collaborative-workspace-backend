class SessionsController < ApplicationController
    def create
        user = User.find(params[:id])
        session[:user_id] = User.id
    end

    def destroy
        session.destroy
    end
end