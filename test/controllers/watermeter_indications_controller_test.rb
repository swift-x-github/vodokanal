require 'test_helper'

class WatermeterIndicationsControllerTest < ActionController::TestCase
  setup do
    @watermeter = watermeters(:one)
    @watermeter_indication = watermeter_indications(:one)
  end

  test "should get index" do
    get :index, params: { watermeter_id: @watermeter }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { watermeter_id: @watermeter }
    assert_response :success
  end

  test "should create watermeter_indication" do
    assert_difference('WatermeterIndication.count') do
      post :create, params: { watermeter_id: @watermeter, watermeter_indication: @watermeter_indication.attributes }
    end

    assert_redirected_to watermeter_watermeter_indication_path(@watermeter, WatermeterIndication.last)
  end

  test "should show watermeter_indication" do
    get :show, params: { watermeter_id: @watermeter, id: @watermeter_indication }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { watermeter_id: @watermeter, id: @watermeter_indication }
    assert_response :success
  end

  test "should update watermeter_indication" do
    put :update, params: { watermeter_id: @watermeter, id: @watermeter_indication, watermeter_indication: @watermeter_indication.attributes }
    assert_redirected_to watermeter_watermeter_indication_path(@watermeter, WatermeterIndication.last)
  end

  test "should destroy watermeter_indication" do
    assert_difference('WatermeterIndication.count', -1) do
      delete :destroy, params: { watermeter_id: @watermeter, id: @watermeter_indication }
    end

    assert_redirected_to watermeter_watermeter_indications_path(@watermeter)
  end
end
