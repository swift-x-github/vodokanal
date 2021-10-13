class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.string :name
      t.string :doc_num
      t.float :summa
      t.integer :status
      t.integer :payment_type
      t.string :description
      t.references :computation, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true
      t.references :vodokanal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
