require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "should create order" do
    visit orders_url
    click_on "New order"

    fill_in "Accessory", with: @order.accessory_id
    fill_in "Bug", with: @order.bug
    fill_in "Client", with: @order.client_id
    fill_in "Control internal", with: @order.control_internal
    fill_in "Date", with: @order.date
    fill_in "Equipament", with: @order.equipament_id
    fill_in "Mark", with: @order.mark_id
    fill_in "Model", with: @order.model
    fill_in "Observation", with: @order.observation
    fill_in "Price", with: @order.price
    fill_in "Progre", with: @order.progre_id
    fill_in "Sector", with: @order.sector_id
    fill_in "Serial number", with: @order.serial_number
    fill_in "Solution", with: @order.solution
    fill_in "Stat", with: @order.stat_id
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit order_url(@order)
    click_on "Edit this order", match: :first

    fill_in "Accessory", with: @order.accessory_id
    fill_in "Bug", with: @order.bug
    fill_in "Client", with: @order.client_id
    fill_in "Control internal", with: @order.control_internal
    fill_in "Date", with: @order.date
    fill_in "Equipament", with: @order.equipament_id
    fill_in "Mark", with: @order.mark_id
    fill_in "Model", with: @order.model
    fill_in "Observation", with: @order.observation
    fill_in "Price", with: @order.price
    fill_in "Progre", with: @order.progre_id
    fill_in "Sector", with: @order.sector_id
    fill_in "Serial number", with: @order.serial_number
    fill_in "Solution", with: @order.solution
    fill_in "Stat", with: @order.stat_id
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "should destroy Order" do
    visit order_url(@order)
    click_on "Destroy this order", match: :first

    assert_text "Order was successfully destroyed"
  end
end
