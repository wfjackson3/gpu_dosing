require 'test_helper'

class ValvegroupsControllerTest < ActionController::TestCase
  setup do
    @valvegroup = valvegroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:valvegroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create valvegroup" do
    assert_difference('Valvegroup.count') do
      post :create, :valvegroup => @valvegroup.attributes
    end

    assert_redirected_to valvegroup_path(assigns(:valvegroup))
  end

  test "should show valvegroup" do
    get :show, :id => @valvegroup.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @valvegroup.to_param
    assert_response :success
  end

  test "should update valvegroup" do
    put :update, :id => @valvegroup.to_param, :valvegroup => @valvegroup.attributes
    assert_redirected_to valvegroup_path(assigns(:valvegroup))
  end

  test "should destroy valvegroup" do
    assert_difference('Valvegroup.count', -1) do
      delete :destroy, :id => @valvegroup.to_param
    end

    assert_redirected_to valvegroups_path
  end
end
