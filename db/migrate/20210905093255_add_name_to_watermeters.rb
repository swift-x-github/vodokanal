class AddNameToWatermeters < ActiveRecord::Migration[6.0]
  def change
    add_column :watermeters, :wm_name, :string, before: :wm_model
    add_column :watermeters, :wm_water_type, :integer, after: :wm_diameter
    add_column :watermeters, :wm_plomba_num, :integer, after: :wm_plomba_type
    add_column :watermeters, :wm_plomba_date, :date, after: :wm_plomba_num
  end
end
