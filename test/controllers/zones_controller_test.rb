require 'test_helper'

class ZonesControllerTest < ActionController::TestCase
  test "should get red" do
    get :red
    assert_response :success
  end

  test "should get green" do
    get :green
    assert_response :success
  end

  test "should get blue" do
    get :blue
    assert_response :success
  end

  test "should get yellow" do
    get :yellow
    assert_response :success
  end

end
