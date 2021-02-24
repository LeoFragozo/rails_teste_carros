require "test_helper"

class CarrosControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get carros_show_url
    assert_response :success
  end

  test "should get new" do
    get carros_new_url
    assert_response :success
  end

  test "should get edit" do
    get carros_edit_url
    assert_response :success
  end
end
