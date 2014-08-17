require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get documentation" do
    get :documentation
    assert_response :success
  end

end
