class CreateWatermeters < ActiveRecord::Migration[6.0]
  def change
    create_table :watermeters do |t|
      t.string :wm_model
      t.string :wm_factory_number
      t.integer :wm_diameter
      t.string :wm_address
      t.date :wm_make_date
      t.date :wm_install_date
      t.integer :wm_stan
      t.string :wm_tu_number
      t.date :wm_tu_date
      t.string :wm_plomba_type
      t.integer :wm_poverka_interval
      t.date :wm_poverka_last_date
      t.date :wm_poverka_next_date
      t.date :wm_control_check_date
      t.float :wm_control_check_params
      t.date :wm_last_accept_report_date
      t.float :wm_last_accept_report_params
      t.date :wm_last_sent_report_date
      t.float :wm_last_sent_report_params
      t.string :wm_last_sent_report_stan
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
