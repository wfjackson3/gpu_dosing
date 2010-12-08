require 'test_helper'

class ValvesControllerTest < ActionController::TestCase
  setup do
    @valf = valves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:valves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create valf" do
    assert_difference('Valve.count') do
      post :create, :valf => @valf.attributes
    end

    assert_redirected_to valf_path(assigns(:valf))
  end

  test "should show valf" do
    get :show, :id => @valf.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @valf.to_param
    assert_response :success
  end

  test "should update valf" do
    put :update, :id => @valf.to_param, :valf => @valf.attributes
    assert_redirected_to valf_path(assigns(:valf))
  end

  test "should destroy valf" do
    assert_difference('Valve.count', -1) do
      delete :destroy, :id => @valf.to_param
    end

    assert_redirected_to valves_path
  end
end
