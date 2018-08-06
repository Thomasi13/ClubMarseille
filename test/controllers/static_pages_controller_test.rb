require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:one)
  end


  test "should get home" do
    get root_path
    assert_response :success
  end

  test "should get new session" do
    get new_session_path
    assert_response :success
  end

  test "should get users index" do
    get users_path
    assert_response :success
  end








end

