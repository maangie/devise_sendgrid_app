require 'test_helper'

class AuthenticationPagesTest < ActionDispatch::IntegrationTest
  test 'sign up page renders' do
    get new_user_registration_url

    assert_response :success
    assert_select 'h2', 'Sign up'
  end

  test 'log in page renders' do
    get new_user_session_url

    assert_response :success
    assert_select 'h2', 'Log in'
  end

  test 'sign up creates an unconfirmed user' do
    assert_difference('User.count', 1) do
      post user_registration_url, params: {
        user: {
          email: 'new-user@example.com',
          password: 'password123',
          password_confirmation: 'password123'
        }
      }
    end

    assert_redirected_to root_url
    user = User.find_by!(email: 'new-user@example.com')

    assert_not user.confirmed?
    assert_not_nil user.confirmation_token
  end
end
