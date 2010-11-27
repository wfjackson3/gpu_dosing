require 'test_helper'

class GasketsControllerTest < ActionController::TestCase
  setup do
    @gasket = gaskets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gaskets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gasket" do
    assert_difference('Gasket.count') do
      post :create, :gasket => @gasket.attributes
    end

    assert_redirected_to gasket_path(assigns(:gasket))
  end

  test "should show gasket" do
    get :show, :id => @gasket.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @gasket.to_param
    assert_response :success
  end

  test "should update gasket" do
    put :update, :id => @gasket.to_param, :gasket => @gasket.attributes
    assert_redirected_to gasket_path(assigns(:gasket))
  end

  test "should destroy gasket" do
    assert_difference('Gasket.count', -1) do
      delete :destroy, :id => @gasket.to_param
    end

    assert_redirected_to gaskets_path
  end
end
