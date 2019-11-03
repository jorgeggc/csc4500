require "application_system_test_case"

class StateCountriesTest < ApplicationSystemTestCase
  setup do
    @state_country = state_countries(:one)
  end

  test "visiting the index" do
    visit state_countries_url
    assert_selector "h1", text: "State Countries"
  end

  test "creating a State country" do
    visit state_countries_url
    click_on "New State Country"

    fill_in "Country", with: @state_country.country
    fill_in "State", with: @state_country.state
    click_on "Create State country"

    assert_text "State country was successfully created"
    click_on "Back"
  end

  test "updating a State country" do
    visit state_countries_url
    click_on "Edit", match: :first

    fill_in "Country", with: @state_country.country
    fill_in "State", with: @state_country.state
    click_on "Update State country"

    assert_text "State country was successfully updated"
    click_on "Back"
  end

  test "destroying a State country" do
    visit state_countries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "State country was successfully destroyed"
  end
end
