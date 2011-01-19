require 'test_helper'

class TemsControllerTest < ActionController::TestCase
  setup do
    @tem = tems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tem" do
    assert_difference('Tem.count') do
      post :create, :tem => @tem.attributes
    end

    assert_redirected_to tem_path(assigns(:tem))
  end

  test "should show tem" do
    get :show, :id => @tem.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tem.to_param
    assert_response :success
  end

  test "should update tem" do
    put :update, :id => @tem.to_param, :tem => @tem.attributes
    assert_redirected_to tem_path(assigns(:tem))
  end

  test "should destroy tem" do
    assert_difference('Tem.count', -1) do
      delete :destroy, :id => @tem.to_param
    end

    assert_redirected_to tems_path
  end
end
