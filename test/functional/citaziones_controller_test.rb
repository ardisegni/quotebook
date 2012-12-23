require 'test_helper'

class CitazionesControllerTest < ActionController::TestCase
  setup do
    @citazione = citaziones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:citaziones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create citazione" do
    assert_difference('Citazione.count') do
      post :create, citazione: { citazione: @citazione.citazione, date_time: @citazione.date_time, id: @citazione.id, user: @citazione.user }
    end

    assert_redirected_to citazione_path(assigns(:citazione))
  end

  test "should show citazione" do
    get :show, id: @citazione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @citazione
    assert_response :success
  end

  test "should update citazione" do
    put :update, id: @citazione, citazione: { citazione: @citazione.citazione, date_time: @citazione.date_time, id: @citazione.id, user: @citazione.user }
    assert_redirected_to citazione_path(assigns(:citazione))
  end

  test "should destroy citazione" do
    assert_difference('Citazione.count', -1) do
      delete :destroy, id: @citazione
    end

    assert_redirected_to citaziones_path
  end
end
