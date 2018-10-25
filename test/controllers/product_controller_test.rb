require 'test_helper'

class ProductControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  # test "the truth" do
  #   assert true
  # end
  test 'user not logged will be redirect' do
    get root_path
    assert_response :redirect
  end

  test 'user logged in wont be redirect' do
    user = users(:one)
    sign_in(user)
    get root_path
    assert_response :success
  end
end
