require 'test_helper'

class KitsControllerTest < ActionController::TestCase
  test "should get select" do
    get :select
    assert_response :success
  end

end
