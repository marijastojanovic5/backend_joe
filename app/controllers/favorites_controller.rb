class FavoritesController < ApplicationController
  def create
    favorite = Favorite.find_or_create_by(favorite_params)
    render json: favorite
  end

  def favorite_params
    params.require(:favorite).permit(:user_id, :coffee_shop_id)
  end
end
