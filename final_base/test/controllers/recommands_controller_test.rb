require 'test_helper'

class RecommandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recommand = recommands(:one)
  end

  test "should get index" do
    get recommands_url
    assert_response :success
  end

  test "should get new" do
    get new_recommand_url
    assert_response :success
  end

  test "should create recommand" do
    assert_difference('Recommand.count') do
      post recommands_url, params: { recommand: { Course_num: @recommand.Course_num, Grader_year: @recommand.Grader_year, Professer_id: @recommand.Professer_id, Reason: @recommand.Reason, Request_flag: @recommand.Request_flag, Student_name: @recommand.Student_name } }
    end

    assert_redirected_to recommand_url(Recommand.last)
  end

  test "should show recommand" do
    get recommand_url(@recommand)
    assert_response :success
  end

  test "should get edit" do
    get edit_recommand_url(@recommand)
    assert_response :success
  end

  test "should update recommand" do
    patch recommand_url(@recommand), params: { recommand: { Course_num: @recommand.Course_num, Grader_year: @recommand.Grader_year, Professer_id: @recommand.Professer_id, Reason: @recommand.Reason, Request_flag: @recommand.Request_flag, Student_name: @recommand.Student_name } }
    assert_redirected_to recommand_url(@recommand)
  end

  test "should destroy recommand" do
    assert_difference('Recommand.count', -1) do
      delete recommand_url(@recommand)
    end

    assert_redirected_to recommands_url
  end
end
