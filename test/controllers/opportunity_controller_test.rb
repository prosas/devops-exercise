require "test_helper"

class OpportunityControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get opportunity_index_url
    assert_response :success
  end

  test "should get show" do
    get opportunity_show_url
    assert_response :success
  end
end
