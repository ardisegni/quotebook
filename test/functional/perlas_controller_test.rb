require 'test_helper'

class PerlasControllerTest < ActionController::TestCase
  setup do
    @perla = perlas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perlas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create perla" do
    assert_difference('Perla.count') do
      post :create, perla: { first_name: @perla.first_name, last_name: @perla.last_name }
    end

    assert_redirected_to perla_path(assigns(:perla))
  end

  test "should show perla" do
    get :show, id: @perla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @perla
    assert_response :success
  end

  test "should update perla" do
    put :update, id: @perla, perla: { first_name: @perla.first_name, last_name: @perla.last_name }
    assert_redirected_to perla_path(assigns(:perla))
  end

  test "should destroy perla" do
    assert_difference('Perla.count', -1) do
      delete :destroy, id: @perla
    end

    assert_redirected_to perlas_path
  end
end
