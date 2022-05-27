require "application_system_test_case"

class EquipamentsTest < ApplicationSystemTestCase
  setup do
    @equipament = equipaments(:one)
  end

  test "visiting the index" do
    visit equipaments_url
    assert_selector "h1", text: "Equipaments"
  end

  test "should create equipament" do
    visit equipaments_url
    click_on "New equipament"

    fill_in "Name", with: @equipament.name
    click_on "Create Equipament"

    assert_text "Equipament was successfully created"
    click_on "Back"
  end

  test "should update Equipament" do
    visit equipament_url(@equipament)
    click_on "Edit this equipament", match: :first

    fill_in "Name", with: @equipament.name
    click_on "Update Equipament"

    assert_text "Equipament was successfully updated"
    click_on "Back"
  end

  test "should destroy Equipament" do
    visit equipament_url(@equipament)
    click_on "Destroy this equipament", match: :first

    assert_text "Equipament was successfully destroyed"
  end
end
