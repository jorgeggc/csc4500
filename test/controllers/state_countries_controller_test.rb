require 'test_helper'

class StateCountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @state_country = state_countries(:one)
  end

  test "should get index" do
    get state_countries_url
    assert_response :success
  end

  test "should get new" do
    get new_state_country_url
    assert_response :success
  end

  test "should create state_country" do
    assert_difference('StateCountry.count') do
      post state_countries_url, params: { state_country: { country: @state_country.country, state: @state_country.state } }
    end

    assert_redirected_to state_country_url(StateCountry.last)
  end

  test "should show state_country" do
    get state_country_url(@state_country)
    assert_response :success
  end

  test "should get edit" do
    get edit_state_country_url(@state_country)
    assert_response :success
  end

  test "should update state_country" do
    patch state_country_url(@state_country), params: { state_country: { country: @state_country.country, state: @state_country.state } }
    assert_redirected_to state_country_url(@state_country)
  end

  test "should destroy state_country" do
    assert_difference('StateCountry.count', -1) do
      delete state_country_url(@state_country)
    end

    assert_redirected_to state_countries_url
  end
end
