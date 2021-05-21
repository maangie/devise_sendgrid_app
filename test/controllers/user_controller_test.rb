require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  # https://github.com/heartcombo/devise#controller-tests
  include Devise::Test::IntegrationHelpers

  test '新規登録にアクセスできる' do
    get new_user_registration_url
    assert_response :success
  end
end
