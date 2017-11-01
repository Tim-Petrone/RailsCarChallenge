require 'test_helper'

class CarsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get cars_create_url
    assert_response :success
  end

  test "should get status" do
    get cars_status_url
    assert_response :success
  end

end
