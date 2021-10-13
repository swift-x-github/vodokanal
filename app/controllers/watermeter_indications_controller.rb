class WatermeterIndicationsController < ApplicationController
  before_action :set_watermeter
  before_action :set_watermeter_indication, only: [:show, :edit, :update, :destroy]
  before_action :set_last_ind, only: [:update]
  # GET watermeters/1/watermeter_indications
  def index
    @watermeter_indications = @watermeter.watermeter_indications.order('created_at DESC').page(params[:page]).per_page(10)
  end

  # GET watermeters/1/watermeter_indications/1
  def show
  end

  # GET watermeters/1/watermeter_indications/new
  def new
    @watermeter_indication = @watermeter.watermeter_indications.build
  end

  # GET watermeters/1/watermeter_indications/1/edit
  def edit
  end

  # POST watermeters/1/watermeter_indications
  def create
    @watermeter_indication = @watermeter.watermeter_indications.build(watermeter_indication_params)
    if @watermeter_indication.save
      @watermeter.update({:wm_last_sent_report_params => @watermeter_indication.data }) 
      @watermeter.update({:wm_last_sent_report_date => @watermeter_indication.created_at })
      redirect_to([@watermeter_indication.watermeter, @watermeter_indication], notice: 'Показания водомера переданы успешно.')
    else
      render action: 'new'
    end
  end

  # PUT watermeters/1/watermeter_indications/1
  def update
    if @watermeter_indication.update_attributes(watermeter_indication_params)
      redirect_to([@watermeter_indication.watermeter, @watermeter_indication], notice: 'Watermeter indication was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE watermeters/1/watermeter_indications/1
  def destroy
    @watermeter_indication.destroy

    redirect_to watermeter_watermeter_indications_url(@watermeter)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watermeter
      @watermeter = Watermeter.find(params[:watermeter_id])
    end

    def set_watermeter_indication
      @watermeter_indication = @watermeter.watermeter_indications.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def watermeter_indication_params
      params.require(:watermeter_indication).permit(:data)
    end

    def set_last_ind
      @watermeter.wm_last_sent_report_params = @watermeter_indication
    end

end
 