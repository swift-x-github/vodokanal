class CreateVodokanals < ActiveRecord::Migration[6.0]
  def change
    create_table :vodokanals do |t|
      t.string :full_name
      t.string :short_name
      t.string :address
      t.string :tel_1
      t.string :tel_2
      t.string :tel_3
      t.string :email
      t.string :director
      t.string :acounter
      t.text :information

      t.timestamps
    end
  end
end
