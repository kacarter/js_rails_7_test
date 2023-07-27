require "application_system_test_case"

class AutocompleteThingsTest < ApplicationSystemTestCase
  setup do
    @autocomplete_thing = autocomplete_things(:one)
  end

  test "visiting the index" do
    visit autocomplete_things_url
    assert_selector "h1", text: "Autocomplete things"
  end

  test "should create autocomplete thing" do
    visit autocomplete_things_url
    click_on "New autocomplete thing"

    fill_in "Name", with: @autocomplete_thing.name
    fill_in "Random field", with: @autocomplete_thing.random_field
    click_on "Create Autocomplete thing"

    assert_text "Autocomplete thing was successfully created"
    click_on "Back"
  end

  test "should update Autocomplete thing" do
    visit autocomplete_thing_url(@autocomplete_thing)
    click_on "Edit this autocomplete thing", match: :first

    fill_in "Name", with: @autocomplete_thing.name
    fill_in "Random field", with: @autocomplete_thing.random_field
    click_on "Update Autocomplete thing"

    assert_text "Autocomplete thing was successfully updated"
    click_on "Back"
  end

  test "should destroy Autocomplete thing" do
    visit autocomplete_thing_url(@autocomplete_thing)
    click_on "Destroy this autocomplete thing", match: :first

    assert_text "Autocomplete thing was successfully destroyed"
  end
end
