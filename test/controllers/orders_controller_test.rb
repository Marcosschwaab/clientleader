require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference("Order.count") do
      post orders_url, params: { order: { accessory_id: @order.accessory_id, bug: @order.bug, client_id: @order.client_id, control_internal: @order.control_internal, date: @order.date, equipament_id: @order.equipament_id, mark_id: @order.mark_id, model: @order.model, observation: @order.observation, price: @order.price, progre_id: @order.progre_id, sector_id: @order.sector_id, serial_number: @order.serial_number, solution: @order.solution, stat_id: @order.stat_id } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { accessory_id: @order.accessory_id, bug: @order.bug, client_id: @order.client_id, control_internal: @order.control_internal, date: @order.date, equipament_id: @order.equipament_id, mark_id: @order.mark_id, model: @order.model, observation: @order.observation, price: @order.price, progre_id: @order.progre_id, sector_id: @order.sector_id, serial_number: @order.serial_number, solution: @order.solution, stat_id: @order.stat_id } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference("Order.count", -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
