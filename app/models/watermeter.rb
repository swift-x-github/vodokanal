class Watermeter < ApplicationRecord
  has_many :watermeter_indications
  has_many:watermeters, dependent: :destroy
  belongs_to :account
end
