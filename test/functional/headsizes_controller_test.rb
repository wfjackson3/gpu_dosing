require 'test_helper'

class HeadsizesControllerTest < ActionController::TestCase
  setup do
    @headsize = headsizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:headsizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create headsize" do
    assert_difference('Headsize.count') do
      post :create, :headsize => @headsize.attributes
    end

    assert_redirected_to headsize_path(assigns(:headsize))
  end

  test "should show headsize" do
    get :show, :id => @headsize.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @headsize.to_param
    assert_response :success
  end

  test "should update headsize" do
    put :update, :id => @headsize.to_param, :headsize => @headsize.attributes
    assert_redirected_to headsize_path(assigns(:headsize))
  end

  test "should destroy headsize" do
    assert_difference('Headsize.count', -1) do
      delete :destroy, :id => @headsize.to_param
    end

    assert_redirected_to headsizes_path
  end
end
