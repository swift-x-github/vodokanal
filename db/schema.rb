# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_05_090444) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "pers_acc_number"
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true
  end

  create_table "vodokanals", force: :cascade do |t|
    t.string "full_name"
    t.string "short_name"
    t.string "address"
    t.string "tel_1"
    t.string "tel_2"
    t.string "tel_3"
    t.string "email"
    t.string "director"
    t.string "acounter"
    t.text "information"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "watermeter_indications", force: :cascade do |t|
    t.bigint "watermeter_id", null: false
    t.float "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["watermeter_id"], name: "index_watermeter_indications_on_watermeter_id"
  end

  create_table "watermeters", force: :cascade do |t|
    t.string "wm_model"
    t.string "wm_factory_number"
    t.integer "wm_diameter"
    t.string "wm_address"
    t.date "wm_make_date"
    t.date "wm_install_date"
    t.integer "wm_stan"
    t.string "wm_tu_number"
    t.date "wm_tu_date"
    t.string "wm_plomba_type"
    t.integer "wm_poverka_interval"
    t.date "wm_poverka_last_date"
    t.date "wm_poverka_next_date"
    t.date "wm_control_check_date"
    t.float "wm_control_check_params"
    t.date "wm_last_accept_report_date"
    t.float "wm_last_accept_report_params"
    t.date "wm_last_sent_report_date"
    t.float "wm_last_sent_report_params"
    t.string "wm_last_sent_report_stan"
    t.bigint "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_watermeters_on_account_id"
  end

  add_foreign_key "watermeter_indications", "watermeters"
  add_foreign_key "watermeters", "accounts"
end
