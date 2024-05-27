require "test_helper"

class PlanetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get planets_index_url
    assert_response :success
  end

  test "should get new" do
    get planets_new_url
    assert_response :success
  end

  test "should get create" do
    get planets_create_url
    assert_response :success
  end
end
