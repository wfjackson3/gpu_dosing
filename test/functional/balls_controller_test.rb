require 'test_helper'

class BallsControllerTest < ActionController::TestCase
  setup do
    @ball = balls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:balls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ball" do
    assert_difference('Ball.count') do
      post :create, :ball => @ball.attributes
    end

    assert_redirected_to ball_path(assigns(:ball))
  end

  test "should show ball" do
    get :show, :id => @ball.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ball.to_param
    assert_response :success
  end

  test "should update ball" do
    put :update, :id => @ball.to_param, :ball => @ball.attributes
    assert_redirected_to ball_path(assigns(:ball))
  end

  test "should destroy ball" do
    assert_difference('Ball.count', -1) do
      delete :destroy, :id => @ball.to_param
    end

    assert_redirected_to balls_path
  end
end
