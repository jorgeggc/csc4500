require 'test_helper'

class ChefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chef = chefs(:one)
  end

  test "should get index" do
    get chefs_url
    assert_response :success
  end

  test "should get new" do
    get new_chef_url
    assert_response :success
  end

  test "should create chef" do
    assert_difference('Chef.count') do
      post chefs_url, params: { chef: { DOB: @chef.DOB, email: @chef.email, firstName: @chef.firstName, gender: @chef.gender, lastName: @chef.lastName, password: @chef.password } }
    end

    assert_redirected_to chef_url(Chef.last)
  end

  test "should show chef" do
    get chef_url(@chef)
    assert_response :success
  end

  test "should get edit" do
    get edit_chef_url(@chef)
    assert_response :success
  end

  test "should update chef" do
    patch chef_url(@chef), params: { chef: { DOB: @chef.DOB, email: @chef.email, firstName: @chef.firstName, gender: @chef.gender, lastName: @chef.lastName, password: @chef.password } }
    assert_redirected_to chef_url(@chef)
  end

  test "should destroy chef" do
    assert_difference('Chef.count', -1) do
      delete chef_url(@chef)
    end

    assert_redirected_to chefs_url
  end
end
