require 'test_helper'

class SelectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get selections_new_url
    assert_response :success
  end

  test "should get show" do
    get selections_show_url
    assert_response :success
  end

  test "should get edit" do
    get selections_edit_url
    assert_response :success
  end

end
