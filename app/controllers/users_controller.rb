class UsersController < ApplicationController
    def create
        user = User.create(user_params)
        render json: user
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    def users_params
        params.require(:user).permit(:email_address, :password_digest, :first_name, :last_name, :date_of_birth, :phone_number)
    end
end
