require 'test_helper'

class DNsizesControllerTest < ActionController::TestCase
  setup do
    @d_nsize = d_nsizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:d_nsizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create d_nsize" do
    assert_difference('DNsize.count') do
      post :create, :d_nsize => @d_nsize.attributes
    end

    assert_redirected_to d_nsize_path(assigns(:d_nsize))
  end

  test "should show d_nsize" do
    get :show, :id => @d_nsize.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @d_nsize.to_param
    assert_response :success
  end

  test "should update d_nsize" do
    put :update, :id => @d_nsize.to_param, :d_nsize => @d_nsize.attributes
    assert_redirected_to d_nsize_path(assigns(:d_nsize))
  end

  test "should destroy d_nsize" do
    assert_difference('DNsize.count', -1) do
      delete :destroy, :id => @d_nsize.to_param
    end

    assert_redirected_to d_nsizes_path
  end
end
