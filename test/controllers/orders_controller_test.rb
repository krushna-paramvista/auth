require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get place_order" do
    get orders_place_order_url
    assert_response :success
  end
end
