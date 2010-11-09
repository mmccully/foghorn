require 'test_helper'

class KidsControllerTest < ActionController::TestCase
  setup do
    @kid = kids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

#  test "should create kid" do
#    assert_difference('Kid.count') do
#      post :create, :kid => @kid.attributes
#    end
#
#    assert_redirected_to kid_path(assigns(:kid))
#  end

  test "should show kid" do
    get :show, :id => @kid.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kid.to_param
    assert_response :success
  end

  test "should update kid" do
    put :update, :id => @kid.to_param, :kid => @kid.attributes
    assert_redirected_to kid_path(assigns(:kid))
  end

  test "should destroy kid" do
    assert_difference('Kid.count', -1) do
      delete :destroy, :id => @kid.to_param
    end

    assert_redirected_to kids_path
  end
end
