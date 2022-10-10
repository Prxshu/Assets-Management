require "test_helper"

class AssestsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get assests_new_url
    assert_response :success
  end

  test "should get show" do
    get assests_show_url
    assert_response :success
  end
end
