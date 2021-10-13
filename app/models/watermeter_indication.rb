class WatermeterIndication < ApplicationRecord
  belongs_to :watermeter
  validates :data, :numericality =>{:greater_than => 0}
  validate :data_cannot_be_less_than_last_value
  
  def data_cannot_be_less_than_last_value

    @watermeter = Watermeter.find(watermeter.id)

    if @watermeter.wm_last_sent_report_params > self.data
      errors.add(:data,  'Переданые данные ошибочны. Показания меньше предыдущих.') 
    end
    
  end
end
