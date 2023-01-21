require "test_helper"

class RocketsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rockets_index_url
    assert_response :success
  end
end
