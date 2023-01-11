require "application_system_test_case"

class DynamicThingsTest < ApplicationSystemTestCase
  setup do
    @dynamic_thing = dynamic_things(:one)
  end

  test "visiting the index" do
    visit dynamic_things_url
    assert_selector "h1", text: "Dynamic things"
  end

  test "should create dynamic thing" do
    visit dynamic_things_url
    click_on "New dynamic thing"

    check "Active" if @dynamic_thing.active
    fill_in "Expiration date", with: @dynamic_thing.expiration_date
    fill_in "Name", with: @dynamic_thing.name
    click_on "Create Dynamic thing"

    assert_text "Dynamic thing was successfully created"
    click_on "Back"
  end

  test "should update Dynamic thing" do
    visit dynamic_thing_url(@dynamic_thing)
    click_on "Edit this dynamic thing", match: :first

    check "Active" if @dynamic_thing.active
    fill_in "Expiration date", with: @dynamic_thing.expiration_date
    fill_in "Name", with: @dynamic_thing.name
    click_on "Update Dynamic thing"

    assert_text "Dynamic thing was successfully updated"
    click_on "Back"
  end

  test "should destroy Dynamic thing" do
    visit dynamic_thing_url(@dynamic_thing)
    click_on "Destroy this dynamic thing", match: :first

    assert_text "Dynamic thing was successfully destroyed"
  end
end
