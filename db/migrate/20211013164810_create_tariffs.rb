class CreateTariffs < ActiveRecord::Migration[6.0]
  def change
    create_table :tariffs do |t|
      t.text :name
      t.float :price
      t.string :description
      t.date :date_start
      t.integer :status

      t.timestamps
    end
  end
end
