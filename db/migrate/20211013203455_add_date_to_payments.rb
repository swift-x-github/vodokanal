class AddDateToPayments < ActiveRecord::Migration[6.0]
  def change
    add_column :payments, :doc_date, :date
  end
end
