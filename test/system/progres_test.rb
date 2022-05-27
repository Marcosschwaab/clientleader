require "application_system_test_case"

class ProgresTest < ApplicationSystemTestCase
  setup do
    @progre = progres(:one)
  end

  test "visiting the index" do
    visit progres_url
    assert_selector "h1", text: "Progres"
  end

  test "should create progre" do
    visit progres_url
    click_on "New progre"

    fill_in "Color", with: @progre.color
    fill_in "Name", with: @progre.name
    click_on "Create Progre"

    assert_text "Progre was successfully created"
    click_on "Back"
  end

  test "should update Progre" do
    visit progre_url(@progre)
    click_on "Edit this progre", match: :first

    fill_in "Color", with: @progre.color
    fill_in "Name", with: @progre.name
    click_on "Update Progre"

    assert_text "Progre was successfully updated"
    click_on "Back"
  end

  test "should destroy Progre" do
    visit progre_url(@progre)
    click_on "Destroy this progre", match: :first

    assert_text "Progre was successfully destroyed"
  end
end
