require "test_helper"

class MembershipControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get membership_create_url
    assert_response :success
  end
end
