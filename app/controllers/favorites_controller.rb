class FavoritesController < ApplicationController
    def create
        favorite = current_user.favorites.create(ofuro_id: params[:ofuro_id])
        redirect_to ofuros_path, notice: "#{favorite.ofuro.name}をお気に入り登録しました"
      end
    
      def destroy
        favorite = current_user.favorites.find_by(id: params[:id]).destroy
        redirect_to ofuros_path, notice: "#{favorite.ofuro.name}をお気に入り解除しました"
      end
end
