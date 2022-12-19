class OfurosController < ApplicationController
  before_action :set_ofuro, only: %i[ show edit update destroy]

  def index
    @ofuros = Ofuro.all
    @q = Ofuro.ransack(params[:q])
    @ofuros = Ofuros.where(Ward.where(ward_id: params[:q][:ward_id])) if params[:q].present? && params[:q][:name].present?
    @ofuros = @q.result
  end

  def search
    @q = Ofuro.ransack(params[:q]) # 送られてきたパラメータを元にテーブルからデータを検索する
    @ofuros = @q.result.includes(:ward) # 検索結果をActiveRecord_Relationのオブジェクトに変換
    render "ofuros/index"
  end


  def show
    @favorite = current_user.favorites.find_by(ofuro_id: @ofuro.id) if logged_in?
    # @hash = Gmaps4rails.build_markers(@place) do |place, marker|
    #   marker.lat place.latitude
    #   marker.lng place.longitude
    #   marker.infowindow place.name
    # end
  end

  def new
    unless logged_in?
      redirect_to ofuros_path and return
    end
    if current_user != @user
      unless current_user.admin?
        redirect_to ofuros_path
      end
    end
    @ofuro = Ofuro.new
  end

  def edit
    if current_user != @user
      unless current_user.admin?
      redirect_to ofuros_path
      end
    end
  end

  def create
    @ofuro = Ofuro.new(ofuro_params) if logged_in?
      if current_user != @user
        unless current_user.admin?
        redirect_to ofuros_path
        end
      end
      respond_to do |format|
      if @ofuro.save
        format.html { redirect_to ofuro_url(@ofuro), notice: "作成されました" }
        format.json { render :show, status: :created, location: @ofuro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ofuro.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @ofuro.update(ofuro_params)
        format.html { redirect_to ofuro_url(@ofuro), notice: "更新されました" }
        format.json { render :show, status: :ok, location: @ofuro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ofuro.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /ofuros/1 or /ofuros/1.json
  def destroy
    @ofuro.destroy
    respond_to do |format|
      format.html { redirect_to ofuros_url, notice: "ofuro was successfully destroyed." }
      format.json { head :no_content }
    end
  end
    
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_ofuro
      @ofuro = Ofuro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ofuro_params
      params.require(:ofuro).permit(:name, :introduction, :address, :prefecture, :latitude, :longitude, :main_image,:image_cache, :user, :user_id,:ward)
    end
end