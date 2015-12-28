require 'test_helper'

class SubmissionsControllerTest < ActionController::TestCase
  setup do
    @submission = submissions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:submissions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create submission" do
    assert_difference('Submission.count') do
      post :create, submission: { g1_club: @submission.g1_club, g1_first_name: @submission.g1_first_name, g1_handicap: @submission.g1_handicap, g1_last_name: @submission.g1_last_name, g1_position: @submission.g1_position, g1_venue: @submission.g1_venue, g2_club: @submission.g2_club, g2_first_name: @submission.g2_first_name, g2_handicap: @submission.g2_handicap, g2_last_name: @submission.g2_last_name, g2_position: @submission.g2_position, g2_venue: @submission.g2_venue, p1_club: @submission.p1_club, p1_first_name: @submission.p1_first_name, p1_handicap: @submission.p1_handicap, p1_last_name: @submission.p1_last_name, p1_position: @submission.p1_position, p1_venue: @submission.p1_venue, p2_club: @submission.p2_club, p2_first_name: @submission.p2_first_name, p2_handicap: @submission.p2_handicap, p2_last_name: @submission.p2_last_name, p2_position: @submission.p2_position, p2_venue: @submission.p2_venue, p3_club: @submission.p3_club, p3_first_name: @submission.p3_first_name, p3_handicap: @submission.p3_handicap, p3_last_name: @submission.p3_last_name, p3_position: @submission.p3_position, p3_venue: @submission.p3_venue, p4_club: @submission.p4_club, p4_first_name: @submission.p4_first_name, p4_handicap: @submission.p4_handicap, p4_last_name: @submission.p4_last_name, p4_position: @submission.p4_position, p4_venue: @submission.p4_venue, p5_club: @submission.p5_club, p5_first_name: @submission.p5_first_name, p5_handicap: @submission.p5_handicap, p5_last_name: @submission.p5_last_name, p5_position: @submission.p5_position, p5_venue: @submission.p5_venue, p6_club: @submission.p6_club, p6_first_name: @submission.p6_first_name, p6_handicap: @submission.p6_handicap, p6_last_name: @submission.p6_last_name, p6_position: @submission.p6_position, p6_venue: @submission.p6_venue, p7_club: @submission.p7_club, p7_first_name: @submission.p7_first_name, p7_handicap: @submission.p7_handicap, p7_last_name: @submission.p7_last_name, p7_position: @submission.p7_position, p7_venue: @submission.p7_venue, p8_club: @submission.p8_club, p8_first_name: @submission.p8_first_name, p8_handicap: @submission.p8_handicap, p8_last_name: @submission.p8_last_name, p8_position: @submission.p8_position, p8_venue: @submission.p8_venue }
    end

    assert_redirected_to submission_path(assigns(:submission))
  end

  test "should show submission" do
    get :show, id: @submission
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @submission
    assert_response :success
  end

  test "should update submission" do
    patch :update, id: @submission, submission: { g1_club: @submission.g1_club, g1_first_name: @submission.g1_first_name, g1_handicap: @submission.g1_handicap, g1_last_name: @submission.g1_last_name, g1_position: @submission.g1_position, g1_venue: @submission.g1_venue, g2_club: @submission.g2_club, g2_first_name: @submission.g2_first_name, g2_handicap: @submission.g2_handicap, g2_last_name: @submission.g2_last_name, g2_position: @submission.g2_position, g2_venue: @submission.g2_venue, p1_club: @submission.p1_club, p1_first_name: @submission.p1_first_name, p1_handicap: @submission.p1_handicap, p1_last_name: @submission.p1_last_name, p1_position: @submission.p1_position, p1_venue: @submission.p1_venue, p2_club: @submission.p2_club, p2_first_name: @submission.p2_first_name, p2_handicap: @submission.p2_handicap, p2_last_name: @submission.p2_last_name, p2_position: @submission.p2_position, p2_venue: @submission.p2_venue, p3_club: @submission.p3_club, p3_first_name: @submission.p3_first_name, p3_handicap: @submission.p3_handicap, p3_last_name: @submission.p3_last_name, p3_position: @submission.p3_position, p3_venue: @submission.p3_venue, p4_club: @submission.p4_club, p4_first_name: @submission.p4_first_name, p4_handicap: @submission.p4_handicap, p4_last_name: @submission.p4_last_name, p4_position: @submission.p4_position, p4_venue: @submission.p4_venue, p5_club: @submission.p5_club, p5_first_name: @submission.p5_first_name, p5_handicap: @submission.p5_handicap, p5_last_name: @submission.p5_last_name, p5_position: @submission.p5_position, p5_venue: @submission.p5_venue, p6_club: @submission.p6_club, p6_first_name: @submission.p6_first_name, p6_handicap: @submission.p6_handicap, p6_last_name: @submission.p6_last_name, p6_position: @submission.p6_position, p6_venue: @submission.p6_venue, p7_club: @submission.p7_club, p7_first_name: @submission.p7_first_name, p7_handicap: @submission.p7_handicap, p7_last_name: @submission.p7_last_name, p7_position: @submission.p7_position, p7_venue: @submission.p7_venue, p8_club: @submission.p8_club, p8_first_name: @submission.p8_first_name, p8_handicap: @submission.p8_handicap, p8_last_name: @submission.p8_last_name, p8_position: @submission.p8_position, p8_venue: @submission.p8_venue }
    assert_redirected_to submission_path(assigns(:submission))
  end

  test "should destroy submission" do
    assert_difference('Submission.count', -1) do
      delete :destroy, id: @submission
    end

    assert_redirected_to submissions_path
  end
end
