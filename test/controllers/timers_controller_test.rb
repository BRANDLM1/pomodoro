require "test_helper"

class TimersControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get timers_home_url
    assert_response :success
  end

  test "should get start" do
    get timers_start_url
    assert_response :success
  end
end
