require 'test_helper'

class SignedinuserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get signedinuser_index_url
    assert_response :success
  end

end
