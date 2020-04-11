require 'test_helper'

class EndorsementsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get endorsements_new_url
    assert_response :success
  end

  test "should get edit" do
    get endorsements_edit_url
    assert_response :success
  end

  test "should get index" do
    get endorsements_index_url
    assert_response :success
  end

  test "should get show" do
    get endorsements_show_url
    assert_response :success
  end

end
