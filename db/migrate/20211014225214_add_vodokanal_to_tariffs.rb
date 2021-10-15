class AddVodokanalToTariffs < ActiveRecord::Migration[6.0]
  def change
    add_reference :tariffs, :vodokanal,  foreign_key: true
  end
end
