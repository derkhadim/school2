require 'test_helper'

class NoninscrisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get noninscris_index_url
    assert_response :success
  end

end
