require "test_helper"

class EquipamentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipament = equipaments(:one)
  end

  test "should get index" do
    get equipaments_url
    assert_response :success
  end

  test "should get new" do
    get new_equipament_url
    assert_response :success
  end

  test "should create equipament" do
    assert_difference("Equipament.count") do
      post equipaments_url, params: { equipament: { name: @equipament.name } }
    end

    assert_redirected_to equipament_url(Equipament.last)
  end

  test "should show equipament" do
    get equipament_url(@equipament)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipament_url(@equipament)
    assert_response :success
  end

  test "should update equipament" do
    patch equipament_url(@equipament), params: { equipament: { name: @equipament.name } }
    assert_redirected_to equipament_url(@equipament)
  end

  test "should destroy equipament" do
    assert_difference("Equipament.count", -1) do
      delete equipament_url(@equipament)
    end

    assert_redirected_to equipaments_url
  end
end
