require 'test_helper'

class VisitorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get visitors_new_url
    assert_response :success
  end

end
