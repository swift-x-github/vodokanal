class Watermeter < ApplicationRecord
  has_many :watermeter_indications
  has_many :watermeters, dependent: :destroy
  belongs_to :account
  belongs_to :vodokanal

def self.vodokanal_id
  Watermeter.first.vodokanal_id
end
end
