require 'test_helper'

class AppointmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get appointments_show_url
    assert_response :success
  end

  test "should get new" do
    get appointments_new_url
    assert_response :success
  end

  test "should get edit" do
    get appointments_edit_url
    assert_response :success
  end

end
