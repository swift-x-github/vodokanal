class AddWatermeterToComputations < ActiveRecord::Migration[6.0]
  def change
    add_reference :computations, :watermeter, null: false, foreign_key: true
    add_reference :computations, :tariff, null: false, foreign_key: true
  end
end
