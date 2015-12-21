require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get delete" do
    get :delete
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

end
