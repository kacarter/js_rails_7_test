require "application_system_test_case"

class ThingsTest < ApplicationSystemTestCase
  setup do
    @thing = things(:one)
  end

  test "visiting the index" do
    visit things_url
    assert_selector "h1", text: "Things"
  end

  test "should create thing" do
    visit things_url
    click_on "New thing"

    check "Active" if @thing.active
    fill_in "Expiration date", with: @thing.expiration_date
    fill_in "Name", with: @thing.name
    click_on "Create Thing"

    assert_text "Thing was successfully created"
    click_on "Back"
  end

  test "should update Thing" do
    visit thing_url(@thing)
    click_on "Edit this thing", match: :first

    check "Active" if @thing.active
    fill_in "Expiration date", with: @thing.expiration_date
    fill_in "Name", with: @thing.name
    click_on "Update Thing"

    assert_text "Thing was successfully updated"
    click_on "Back"
  end

  test "should destroy Thing" do
    visit thing_url(@thing)
    click_on "Destroy this thing", match: :first

    assert_text "Thing was successfully destroyed"
  end
end
