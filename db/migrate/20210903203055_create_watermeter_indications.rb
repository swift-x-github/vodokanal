class CreateWatermeterIndications < ActiveRecord::Migration[6.0]
  def change
    create_table :watermeter_indications do |t|
      t.references :watermeter, null: false, foreign_key: true
      t.float :data

      t.timestamps
    end
  end
end
