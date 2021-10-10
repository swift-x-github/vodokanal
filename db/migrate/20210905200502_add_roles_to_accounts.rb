class AddRolesToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :superadmin_role, :boolean, default: false
    add_column :accounts, :supervisor_role, :boolean, default: false
    add_column :accounts, :user_role, :boolean, default: true
  end
end
