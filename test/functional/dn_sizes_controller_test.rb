require 'test_helper'

class DnSizesControllerTest < ActionController::TestCase
  setup do
    @dn_size = dn_sizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dn_sizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dn_size" do
    assert_difference('DnSize.count') do
      post :create, :dn_size => @dn_size.attributes
    end

    assert_redirected_to dn_size_path(assigns(:dn_size))
  end

  test "should show dn_size" do
    get :show, :id => @dn_size.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dn_size.to_param
    assert_response :success
  end

  test "should update dn_size" do
    put :update, :id => @dn_size.to_param, :dn_size => @dn_size.attributes
    assert_redirected_to dn_size_path(assigns(:dn_size))
  end

  test "should destroy dn_size" do
    assert_difference('DnSize.count', -1) do
      delete :destroy, :id => @dn_size.to_param
    end

    assert_redirected_to dn_sizes_path
  end
end
