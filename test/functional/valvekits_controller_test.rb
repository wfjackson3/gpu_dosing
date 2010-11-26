require 'test_helper'

class ValvekitsControllerTest < ActionController::TestCase
  setup do
    @valvekit = valvekits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:valvekits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create valvekit" do
    assert_difference('Valvekit.count') do
      post :create, :valvekit => @valvekit.attributes
    end

    assert_redirected_to valvekit_path(assigns(:valvekit))
  end

  test "should show valvekit" do
    get :show, :id => @valvekit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @valvekit.to_param
    assert_response :success
  end

  test "should update valvekit" do
    put :update, :id => @valvekit.to_param, :valvekit => @valvekit.attributes
    assert_redirected_to valvekit_path(assigns(:valvekit))
  end

  test "should destroy valvekit" do
    assert_difference('Valvekit.count', -1) do
      delete :destroy, :id => @valvekit.to_param
    end

    assert_redirected_to valvekits_path
  end
end
