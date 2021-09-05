require 'test_helper'

class WatermeterControllerTest < ActionDispatch::IntegrationTest
  test "should get :all" do
    get watermeter_:all_url
    assert_response :success
  end

end
