require 'test_helper'

class VodokanalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vodokanal = vodokanals(:one)
  end

  test "should get index" do
    get vodokanals_url
    assert_response :success
  end

  test "should get new" do
    get new_vodokanal_url
    assert_response :success
  end

  test "should create vodokanal" do
    assert_difference('Vodokanal.count') do
      post vodokanals_url, params: { vodokanal: { acounter: @vodokanal.acounter, address: @vodokanal.address, director: @vodokanal.director, email: @vodokanal.email, full_name: @vodokanal.full_name, information: @vodokanal.information, short_name: @vodokanal.short_name, tel_1: @vodokanal.tel_1, tel_2: @vodokanal.tel_2, tel_3: @vodokanal.tel_3 } }
    end

    assert_redirected_to vodokanal_url(Vodokanal.last)
  end

  test "should show vodokanal" do
    get vodokanal_url(@vodokanal)
    assert_response :success
  end

  test "should get edit" do
    get edit_vodokanal_url(@vodokanal)
    assert_response :success
  end

  test "should update vodokanal" do
    patch vodokanal_url(@vodokanal), params: { vodokanal: { acounter: @vodokanal.acounter, address: @vodokanal.address, director: @vodokanal.director, email: @vodokanal.email, full_name: @vodokanal.full_name, information: @vodokanal.information, short_name: @vodokanal.short_name, tel_1: @vodokanal.tel_1, tel_2: @vodokanal.tel_2, tel_3: @vodokanal.tel_3 } }
    assert_redirected_to vodokanal_url(@vodokanal)
  end

  test "should destroy vodokanal" do
    assert_difference('Vodokanal.count', -1) do
      delete vodokanal_url(@vodokanal)
    end

    assert_redirected_to vodokanals_url
  end
end
