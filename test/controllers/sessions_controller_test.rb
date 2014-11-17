require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should login" do
    delta = users(:one)
    post :create, name: delta.name, password: 'secret'
    assert_redirected_to admin_url
    assert_equal delta.id, session[:user_id]
  end
  
  test "should fail login" do
    delta = users(:one)
    post :create, name: delta.name, password: 'wrong'
    assert_redirected_to login_url
  end

  test "should get destroy" do
    delete :destroy
    assert_redirected_to store_url
  end

end
