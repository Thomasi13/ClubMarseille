require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get new_user_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { firstname:  "",
      									 lastname:  "", email: "user@invalid"} }
    end
       assert_not flash.empty?
  end
end
