require 'test_helper'

class SelectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get base" do
    get selections_base_url
    assert_response :success
  end

  test "should get design" do
    get selections_design_url
    assert_response :success
  end

  test "should get management" do
    get selections_management_url
    assert_response :success
  end

  test "should get technical" do
    get selections_technical_url
    assert_response :success
  end

end
