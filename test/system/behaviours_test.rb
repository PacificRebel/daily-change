require "application_system_test_case"

class BehavioursTest < ApplicationSystemTestCase
  setup do
    @behaviour = behaviours(:one)
  end

  test "visiting the index" do
    visit behaviours_url
    assert_selector "h1", text: "Behaviours"
  end

  test "creating a Behaviour" do
    visit behaviours_url
    click_on "New Behaviour"

    fill_in "Description", with: @behaviour.description
    fill_in "Name", with: @behaviour.name
    fill_in "Picture", with: @behaviour.picture
    click_on "Create Behaviour"

    assert_text "Behaviour was successfully created"
    click_on "Back"
  end

  test "updating a Behaviour" do
    visit behaviours_url
    click_on "Edit", match: :first

    fill_in "Description", with: @behaviour.description
    fill_in "Name", with: @behaviour.name
    fill_in "Picture", with: @behaviour.picture
    click_on "Update Behaviour"

    assert_text "Behaviour was successfully updated"
    click_on "Back"
  end

  test "destroying a Behaviour" do
    visit behaviours_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Behaviour was successfully destroyed"
  end
end
