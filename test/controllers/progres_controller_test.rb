require "test_helper"

class ProgresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @progre = progres(:one)
  end

  test "should get index" do
    get progres_url
    assert_response :success
  end

  test "should get new" do
    get new_progre_url
    assert_response :success
  end

  test "should create progre" do
    assert_difference("Progre.count") do
      post progres_url, params: { progre: { color: @progre.color, name: @progre.name } }
    end

    assert_redirected_to progre_url(Progre.last)
  end

  test "should show progre" do
    get progre_url(@progre)
    assert_response :success
  end

  test "should get edit" do
    get edit_progre_url(@progre)
    assert_response :success
  end

  test "should update progre" do
    patch progre_url(@progre), params: { progre: { color: @progre.color, name: @progre.name } }
    assert_redirected_to progre_url(@progre)
  end

  test "should destroy progre" do
    assert_difference("Progre.count", -1) do
      delete progre_url(@progre)
    end

    assert_redirected_to progres_url
  end
end
