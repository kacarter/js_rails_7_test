require "test_helper"

class AutocompleteThingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @autocomplete_thing = autocomplete_things(:one)
  end

  test "should get index" do
    get autocomplete_things_url
    assert_response :success
  end

  test "should get new" do
    get new_autocomplete_thing_url
    assert_response :success
  end

  test "should create autocomplete_thing" do
    assert_difference("AutocompleteThing.count") do
      post autocomplete_things_url, params: { autocomplete_thing: { name: @autocomplete_thing.name, random_field: @autocomplete_thing.random_field } }
    end

    assert_redirected_to autocomplete_thing_url(AutocompleteThing.last)
  end

  test "should show autocomplete_thing" do
    get autocomplete_thing_url(@autocomplete_thing)
    assert_response :success
  end

  test "should get edit" do
    get edit_autocomplete_thing_url(@autocomplete_thing)
    assert_response :success
  end

  test "should update autocomplete_thing" do
    patch autocomplete_thing_url(@autocomplete_thing), params: { autocomplete_thing: { name: @autocomplete_thing.name, random_field: @autocomplete_thing.random_field } }
    assert_redirected_to autocomplete_thing_url(@autocomplete_thing)
  end

  test "should destroy autocomplete_thing" do
    assert_difference("AutocompleteThing.count", -1) do
      delete autocomplete_thing_url(@autocomplete_thing)
    end

    assert_redirected_to autocomplete_things_url
  end
end
