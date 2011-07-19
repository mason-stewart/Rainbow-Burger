require 'test_helper'

class BurgersControllerTest < ActionController::TestCase
  setup do
    @burger = burgers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:burgers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create burger" do
    assert_difference('Burger.count') do
      post :create, :burger => @burger.attributes
    end

    assert_redirected_to burger_path(assigns(:burger))
  end

  test "should show burger" do
    get :show, :id => @burger.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @burger.to_param
    assert_response :success
  end

  test "should update burger" do
    put :update, :id => @burger.to_param, :burger => @burger.attributes
    assert_redirected_to burger_path(assigns(:burger))
  end

  test "should destroy burger" do
    assert_difference('Burger.count', -1) do
      delete :destroy, :id => @burger.to_param
    end

    assert_redirected_to burgers_path
  end
end
