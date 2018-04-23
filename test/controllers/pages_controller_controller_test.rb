require 'test_helper'

class PagesControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_controller_index_url
    assert_response :success
  end

end
