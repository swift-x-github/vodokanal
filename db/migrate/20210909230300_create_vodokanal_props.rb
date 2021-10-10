class CreateVodokanalProps < ActiveRecord::Migration[6.0]
  def change
    create_table :vodokanal_props do |t|
      t.string :account_name
      t.string :iban_code
      t.string :account_number
      t.string :swift_code
      t.string :bank_name
      t.string :mfo_number
      t.string :edrpou_number
      t.string :ipn_number
      t.string :pdv_number
      t.string :info
      t.references :vodokanal, null: false, foreign_key: true
      t.timestamps
    end
  end
end
