class UsersController < ApplicationController
  
    def update
      user = User.find(params[:id])
      user.update(user_params)
      if user.valid?
        render json: user
      else
        render json: user.errors, status: 422
      end
    end

    private
  
    def user_params
      params.require(:user).permit(favorites: [])
    end
  end
  
