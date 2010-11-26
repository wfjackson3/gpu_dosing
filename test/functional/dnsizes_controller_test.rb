require 'test_helper'

class DnsizesControllerTest < ActionController::TestCase
  setup do
    @dnsize = dnsizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dnsizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dnsize" do
    assert_difference('Dnsize.count') do
      post :create, :dnsize => @dnsize.attributes
    end

    assert_redirected_to dnsize_path(assigns(:dnsize))
  end

  test "should show dnsize" do
    get :show, :id => @dnsize.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dnsize.to_param
    assert_response :success
  end

  test "should update dnsize" do
    put :update, :id => @dnsize.to_param, :dnsize => @dnsize.attributes
    assert_redirected_to dnsize_path(assigns(:dnsize))
  end

  test "should destroy dnsize" do
    assert_difference('Dnsize.count', -1) do
      delete :destroy, :id => @dnsize.to_param
    end

    assert_redirected_to dnsizes_path
  end
end
