require 'test_helper'

class BatmenControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:batmen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create batman" do
    assert_difference('Batman.count') do
      post :create, :batman => { }
    end

    assert_redirected_to batman_path(assigns(:batman))
  end

  test "should show batman" do
    get :show, :id => batmen(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => batmen(:one).to_param
    assert_response :success
  end

  test "should update batman" do
    put :update, :id => batmen(:one).to_param, :batman => { }
    assert_redirected_to batman_path(assigns(:batman))
  end

  test "should destroy batman" do
    assert_difference('Batman.count', -1) do
      delete :destroy, :id => batmen(:one).to_param
    end

    assert_redirected_to batmen_path
  end
end
