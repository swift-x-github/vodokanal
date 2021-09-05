class AddPersAccNumToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :pers_acc_number, :string
  end
end
