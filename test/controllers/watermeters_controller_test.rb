require 'test_helper'

class WatermetersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @watermeter = watermeters(:one)
  end

  test "should get index" do
    get watermeters_url
    assert_response :success
  end

  test "should get new" do
    get new_watermeter_url
    assert_response :success
  end

  test "should create watermeter" do
    assert_difference('Watermeter.count') do
      post watermeters_url, params: { watermeter: { account_id: @watermeter.account_id, wm_address: @watermeter.wm_address, wm_control_check_date: @watermeter.wm_control_check_date, wm_control_check_params: @watermeter.wm_control_check_params, wm_diameter: @watermeter.wm_diameter, wm_factory_number: @watermeter.wm_factory_number, wm_install_date: @watermeter.wm_install_date, wm_last_accept_report_date: @watermeter.wm_last_accept_report_date, wm_last_accept_report_params: @watermeter.wm_last_accept_report_params, wm_last_sent_report_date: @watermeter.wm_last_sent_report_date, wm_last_sent_report_params: @watermeter.wm_last_sent_report_params, wm_last_sent_report_stan: @watermeter.wm_last_sent_report_stan, wm_make_date: @watermeter.wm_make_date, wm_model: @watermeter.wm_model, wm_plomba_type: @watermeter.wm_plomba_type, wm_poverka_interval: @watermeter.wm_poverka_interval, wm_poverka_last_date: @watermeter.wm_poverka_last_date, wm_poverka_next_date: @watermeter.wm_poverka_next_date, wm_stan: @watermeter.wm_stan, wm_tu_date: @watermeter.wm_tu_date, wm_tu_number: @watermeter.wm_tu_number } }
    end

    assert_redirected_to watermeter_url(Watermeter.last)
  end

  test "should show watermeter" do
    get watermeter_url(@watermeter)
    assert_response :success
  end

  test "should get edit" do
    get edit_watermeter_url(@watermeter)
    assert_response :success
  end

  test "should update watermeter" do
    patch watermeter_url(@watermeter), params: { watermeter: { account_id: @watermeter.account_id, wm_address: @watermeter.wm_address, wm_control_check_date: @watermeter.wm_control_check_date, wm_control_check_params: @watermeter.wm_control_check_params, wm_diameter: @watermeter.wm_diameter, wm_factory_number: @watermeter.wm_factory_number, wm_install_date: @watermeter.wm_install_date, wm_last_accept_report_date: @watermeter.wm_last_accept_report_date, wm_last_accept_report_params: @watermeter.wm_last_accept_report_params, wm_last_sent_report_date: @watermeter.wm_last_sent_report_date, wm_last_sent_report_params: @watermeter.wm_last_sent_report_params, wm_last_sent_report_stan: @watermeter.wm_last_sent_report_stan, wm_make_date: @watermeter.wm_make_date, wm_model: @watermeter.wm_model, wm_plomba_type: @watermeter.wm_plomba_type, wm_poverka_interval: @watermeter.wm_poverka_interval, wm_poverka_last_date: @watermeter.wm_poverka_last_date, wm_poverka_next_date: @watermeter.wm_poverka_next_date, wm_stan: @watermeter.wm_stan, wm_tu_date: @watermeter.wm_tu_date, wm_tu_number: @watermeter.wm_tu_number } }
    assert_redirected_to watermeter_url(@watermeter)
  end

  test "should destroy watermeter" do
    assert_difference('Watermeter.count', -1) do
      delete watermeter_url(@watermeter)
    end

    assert_redirected_to watermeters_url
  end
end
