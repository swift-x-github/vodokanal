class AddUserTypeToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :account_type, :string
  end
end
