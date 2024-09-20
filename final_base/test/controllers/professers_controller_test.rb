require 'test_helper'

class ProfessersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professer = professers(:one)
  end

  test "should get index" do
    get professers_url
    assert_response :success
  end

  test "should get new" do
    get new_professer_url
    assert_response :success
  end

  test "should create professer" do
    assert_difference('Professer.count') do
      post professers_url, params: { professer: { Course_num: @professer.Course_num, Email: @professer.Email, Name: @professer.Name, Password: @professer.Password, Section_num: @professer.Section_num, Teaching_year: @professer.Teaching_year, Title: @professer.Title } }
    end

    assert_redirected_to professer_url(Professer.last)
  end

  test "should show professer" do
    get professer_url(@professer)
    assert_response :success
  end

  test "should get edit" do
    get edit_professer_url(@professer)
    assert_response :success
  end

  test "should update professer" do
    patch professer_url(@professer), params: { professer: { Course_num: @professer.Course_num, Email: @professer.Email, Name: @professer.Name, Password: @professer.Password, Section_num: @professer.Section_num, Teaching_year: @professer.Teaching_year, Title: @professer.Title } }
    assert_redirected_to professer_url(@professer)
  end

  test "should destroy professer" do
    assert_difference('Professer.count', -1) do
      delete professer_url(@professer)
    end

    assert_redirected_to professers_url
  end
end
