require "application_system_test_case"

class WatermetersTest < ApplicationSystemTestCase
  setup do
    @watermeter = watermeters(:one)
  end

  test "visiting the index" do
    visit watermeters_url
    assert_selector "h1", text: "Watermeters"
  end

  test "creating a Watermeter" do
    visit watermeters_url
    click_on "New Watermeter"

    fill_in "Account", with: @watermeter.account_id
    fill_in "Wm address", with: @watermeter.wm_address
    fill_in "Wm control check date", with: @watermeter.wm_control_check_date
    fill_in "Wm control check params", with: @watermeter.wm_control_check_params
    fill_in "Wm diameter", with: @watermeter.wm_diameter
    fill_in "Wm factory number", with: @watermeter.wm_factory_number
    fill_in "Wm install date", with: @watermeter.wm_install_date
    fill_in "Wm last accept report date", with: @watermeter.wm_last_accept_report_date
    fill_in "Wm last accept report params", with: @watermeter.wm_last_accept_report_params
    fill_in "Wm last sent report date", with: @watermeter.wm_last_sent_report_date
    fill_in "Wm last sent report params", with: @watermeter.wm_last_sent_report_params
    fill_in "Wm last sent report stan", with: @watermeter.wm_last_sent_report_stan
    fill_in "Wm make date", with: @watermeter.wm_make_date
    fill_in "Wm model", with: @watermeter.wm_model
    fill_in "Wm plomba type", with: @watermeter.wm_plomba_type
    fill_in "Wm poverka interval", with: @watermeter.wm_poverka_interval
    fill_in "Wm poverka last date", with: @watermeter.wm_poverka_last_date
    fill_in "Wm poverka next date", with: @watermeter.wm_poverka_next_date
    fill_in "Wm stan", with: @watermeter.wm_stan
    fill_in "Wm tu date", with: @watermeter.wm_tu_date
    fill_in "Wm tu number", with: @watermeter.wm_tu_number
    click_on "Create Watermeter"

    assert_text "Watermeter was successfully created"
    click_on "Back"
  end

  test "updating a Watermeter" do
    visit watermeters_url
    click_on "Edit", match: :first

    fill_in "Account", with: @watermeter.account_id
    fill_in "Wm address", with: @watermeter.wm_address
    fill_in "Wm control check date", with: @watermeter.wm_control_check_date
    fill_in "Wm control check params", with: @watermeter.wm_control_check_params
    fill_in "Wm diameter", with: @watermeter.wm_diameter
    fill_in "Wm factory number", with: @watermeter.wm_factory_number
    fill_in "Wm install date", with: @watermeter.wm_install_date
    fill_in "Wm last accept report date", with: @watermeter.wm_last_accept_report_date
    fill_in "Wm last accept report params", with: @watermeter.wm_last_accept_report_params
    fill_in "Wm last sent report date", with: @watermeter.wm_last_sent_report_date
    fill_in "Wm last sent report params", with: @watermeter.wm_last_sent_report_params
    fill_in "Wm last sent report stan", with: @watermeter.wm_last_sent_report_stan
    fill_in "Wm make date", with: @watermeter.wm_make_date
    fill_in "Wm model", with: @watermeter.wm_model
    fill_in "Wm plomba type", with: @watermeter.wm_plomba_type
    fill_in "Wm poverka interval", with: @watermeter.wm_poverka_interval
    fill_in "Wm poverka last date", with: @watermeter.wm_poverka_last_date
    fill_in "Wm poverka next date", with: @watermeter.wm_poverka_next_date
    fill_in "Wm stan", with: @watermeter.wm_stan
    fill_in "Wm tu date", with: @watermeter.wm_tu_date
    fill_in "Wm tu number", with: @watermeter.wm_tu_number
    click_on "Update Watermeter"

    assert_text "Watermeter was successfully updated"
    click_on "Back"
  end

  test "destroying a Watermeter" do
    visit watermeters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Watermeter was successfully destroyed"
  end
end
