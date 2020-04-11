require 'test_helper'

class ActivitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get activities_show_url
    assert_response :success
  end

  test "should get new" do
    get activities_new_url
    assert_response :success
  end

  test "should get edit" do
    get activities_edit_url
    assert_response :success
  end

  test "should get index" do
    get activities_index_url
    assert_response :success
  end

end
