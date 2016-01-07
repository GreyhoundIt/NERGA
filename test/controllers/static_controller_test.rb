require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get finals" do
    get :finals
    assert_response :success
  end

  test "should get rules" do
    get :rules
    assert_response :success
  end

  test "should get honours" do
    get :honours
    assert_response :success
  end

  test "should get links" do
    get :links
    assert_response :success
  end

  test "should get sponsors" do
    get :sponsors
    assert_response :success
  end

end
