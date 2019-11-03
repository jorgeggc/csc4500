require 'test_helper'

class SignedinchefControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get signedinchef_index_url
    assert_response :success
  end

end
