class Watermeter < ApplicationRecord
  has_many :watermeter_indications
  has_many :watermeters, dependent: :destroy
  belongs_to :account
  belongs_to :vodokanal

  # validates :wm_name, presence: true, length: { maximum: 100 }
  # validates :wm_model, presence: true, length: { maximum: 10 }
  # validates :wm_factory_number, presence: true, uniqueness: true, length: { maximum: 10 }
  # validates :wm_diameter, presence: true, numericality: { only_integer: true }
  # validates :wm_address, presence: true,  length: { maximum: 500 }
  # validates :wm_make_date, presence: true
  # validates :wm_install_date, presence: true
  # validates :wm_stan, presence: true, numericality: { only_integer: true }
  # validates :wm_tu_number, presence: true, length: { maximum: 10 }
  # validates :wm_tu_date, presence: true
  # validates :wm_plomba_type, presence: true, numericality: { only_integer: true }
  # validates :wm_poverka_interval, presence: true, numericality: { only_integer: true }
  # validates :wm_poverka_last_date, presence: true
  # validates :wm_poverka_next_date, comparison: { greater_than: :wm_poverka_last_date }
  # validates :wm_name, presence: true

  


  def self.vodokanal_id
    Watermeter.first.vodokanal_id
  end

 
end
