require "test_helper"

class ParticipationControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get participation_create_url
    assert_response :success
  end

  test "should get destroy" do
    get participation_destroy_url
    assert_response :success
  end
end
