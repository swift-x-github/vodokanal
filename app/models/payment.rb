class Payment < ApplicationRecord
  belongs_to :computation
  belongs_to :account
  belongs_to :vodokanal
end
