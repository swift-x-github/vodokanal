class WatermetersController < ApplicationController
  before_action :set_watermeter, only: %i[ show edit update destroy ]
  before_action :authenticate_account!

  # GET /watermeters or /watermeters.json
  def index
    if account_signed_in?
      @watermeters = Watermeter.where(account_id: current_account.id).order('created_at ASC')
    else 
    end
  end

  # GET /watermeters/1 or /watermeters/1.json
  def show
    @watermeter = Watermeter.find(params[:id])
  end

  # GET /watermeters/new
  def new
    @watermeter = Watermeter.new
  end

  # GET /watermeters/1/edit
  def edit
  end

  # POST /watermeters or /watermeters.json
  def create
    @watermeter = Watermeter.new(watermeter_params)
    @watermeter.account_id = current_account.id
    @watermeter.vodokanal_id = "1"

    respond_to do |format|
      if @watermeter.save
        format.html { redirect_to @watermeter, notice: "Водомер успешно создан." }
        format.json { render :show, status: :created, location: @watermeter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @watermeter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /watermeters/1 or /watermeters/1.json
  def update
    respond_to do |format|
      if @watermeter.update(watermeter_params)
        format.html { redirect_to @watermeter, notice: "Информация о водомере успешно обновлена." }
        format.json { render :show, status: :ok, location: @watermeter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @watermeter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /watermeters/1 or /watermeters/1.json
  def destroy
    @watermeter.destroy
    respond_to do |format|
      format.html { redirect_to watermeters_url, notice: "Водомер успешно удален" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watermeter
      @watermeter = Watermeter.where(account_id: current_account.id).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def watermeter_params
      params.require(:watermeter).permit(:wm_model, :wm_factory_number, :wm_diameter, :wm_address,\
         :wm_make_date, :wm_install_date, :wm_stan, :wm_tu_number, :wm_tu_date, :wm_plomba_type, \
         :wm_poverka_interval, :wm_poverka_last_date, :wm_poverka_next_date, :wm_control_check_date,\
          :wm_control_check_params, :wm_last_accept_report_date, :wm_last_accept_report_params,\
           :wm_last_sent_report_date, :wm_last_sent_report_params, :wm_last_sent_report_stan,\
           :wm_name, :wm_water_type, :wm_plomba_num, :wm_plomba_date, :vodokanal_id)
    end
end
