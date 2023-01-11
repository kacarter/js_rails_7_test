require "test_helper"

class DynamicThingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dynamic_thing = dynamic_things(:one)
  end

  test "should get index" do
    get dynamic_things_url
    assert_response :success
  end

  test "should get new" do
    get new_dynamic_thing_url
    assert_response :success
  end

  test "should create dynamic_thing" do
    assert_difference("DynamicThing.count") do
      post dynamic_things_url, params: { dynamic_thing: { active: @dynamic_thing.active, expiration_date: @dynamic_thing.expiration_date, name: @dynamic_thing.name } }
    end

    assert_redirected_to dynamic_thing_url(DynamicThing.last)
  end

  test "should show dynamic_thing" do
    get dynamic_thing_url(@dynamic_thing)
    assert_response :success
  end

  test "should get edit" do
    get edit_dynamic_thing_url(@dynamic_thing)
    assert_response :success
  end

  test "should update dynamic_thing" do
    patch dynamic_thing_url(@dynamic_thing), params: { dynamic_thing: { active: @dynamic_thing.active, expiration_date: @dynamic_thing.expiration_date, name: @dynamic_thing.name } }
    assert_redirected_to dynamic_thing_url(@dynamic_thing)
  end

  test "should destroy dynamic_thing" do
    assert_difference("DynamicThing.count", -1) do
      delete dynamic_thing_url(@dynamic_thing)
    end

    assert_redirected_to dynamic_things_url
  end
end
