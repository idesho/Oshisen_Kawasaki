class OfurosController < ApplicationController
  before_action :set_ofuro, only: %i[ show edit update destroy ]

  # GET /ofuros or /ofuros.json
  def index
    @ofuros = Ofuro.all
  end

  # GET /ofuros/1 or /ofuros/1.json
  def show
  end

  # GET /ofuros/new
  def new
    @ofuro = Ofuro.new
  end

  # GET /ofuros/1/edit
  def edit
  end

  # POST /ofuros or /ofuros.json
  def create
    @ofuro = Ofuro.new(ofuro_params)

    respond_to do |format|
      if @ofuro.save
        format.html { redirect_to ofuro_url(@ofuro), notice: "Ofuro was successfully created." }
        format.json { render :show, status: :created, location: @ofuro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ofuro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ofuros/1 or /ofuros/1.json
  def update
    respond_to do |format|
      if @ofuro.update(ofuro_params)
        format.html { redirect_to ofuro_url(@ofuro), notice: "Ofuro was successfully updated." }
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
      format.html { redirect_to ofuros_url, notice: "Ofuro was successfully destroyed." }
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
      params.fetch(:ofuro, {})
    end
end
