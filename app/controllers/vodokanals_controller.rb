class VodokanalsController < ApplicationController
  before_action :set_vodokanal, only: %i[ show edit update destroy ]
  before_action :authenticate_account!, except: [:show]
  # GET /vodokanals or /vodokanals.json
  def index
    @vodokanals = Vodokanal.all
  end

  # GET /vodokanals/1 or /vodokanals/1.json
  def show
  end

  # GET /vodokanals/1/edit
  def edit
  end

  # POST /vodokanals or /vodokanals.json
  def create
    @vodokanal = Vodokanal.new(vodokanal_params)

    respond_to do |format|
      if @vodokanal.save
        format.html { redirect_to @vodokanal, notice: "Vodokanal was successfully created." }
        format.json { render :show, status: :created, location: @vodokanal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vodokanal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vodokanals/1 or /vodokanals/1.json
  def update
    respond_to do |format|
      if @vodokanal.update(vodokanal_params)
        format.html { redirect_to @vodokanal, notice: "Vodokanal was successfully updated." }
        format.json { render :show, status: :ok, location: @vodokanal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vodokanal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vodokanals/1 or /vodokanals/1.json
  def destroy
    @vodokanal.destroy
    respond_to do |format|
      format.html { redirect_to vodokanals_url, notice: "Vodokanal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vodokanal
      @vodokanal = Vodokanal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vodokanal_params
      params.require(:vodokanal).permit(:full_name, :short_name, :address, :tel_1, :tel_2, :tel_3, :email, :director, :acounter, :information)
    end
end
