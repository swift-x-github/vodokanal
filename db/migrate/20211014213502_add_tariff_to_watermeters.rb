class AddTariffToWatermeters < ActiveRecord::Migration[6.0]
  def change
    add_reference :watermeters, :tariffs,  foreign_key: true
  end
end
