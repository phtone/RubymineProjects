require 'test_helper'

class CardControllerTest < ActionController::TestCase
  test "should get Index" do
    get :Index
    assert_response :success
  end

  test "should get add" do
    get :add
    assert_response :success
  end

end
