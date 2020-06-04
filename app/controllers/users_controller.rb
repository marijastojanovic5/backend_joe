class UsersController < ApplicationController
    def index
        all_users=User.all
        render json: all_users.to_json(
          :include => {:coffee_shops =>
        {:except => [:created_at, :updated_at]}}
        )
        
    end
    def show
        user = User.find(params[:id])
        render json: user.to_json(
          :include => {:favorites =>
            {:except => [:created_at, :updated_at]}}
        )

    end
    def profile
        token= request.headers["Authentication"]
        user = User.find(decode(token)["id"])
        render json: user
    end
    
end
