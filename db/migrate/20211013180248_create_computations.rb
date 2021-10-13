class CreateComputations < ActiveRecord::Migration[6.0]
  def change
    create_table :computations do |t|
      t.string :name
      t.float :water_consumption
      t.float :price
      t.float :summa
      t.date :b_period
      t.date :e_period
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
