require 'test_helper'

class ColaboratorsControllerTest < ActionController::TestCase
  setup do
    @colaborator = colaborators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:colaborators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create colaborator" do
    assert_difference('Colaborator.count') do
      post :create, colaborator: { email: @colaborator.email, name: @colaborator.name, registration: @colaborator.registration }
    end

    assert_redirected_to colaborator_path(assigns(:colaborator))
  end

  test "should show colaborator" do
    get :show, id: @colaborator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @colaborator
    assert_response :success
  end

  test "should update colaborator" do
    patch :update, id: @colaborator, colaborator: { email: @colaborator.email, name: @colaborator.name, registration: @colaborator.registration }
    assert_redirected_to colaborator_path(assigns(:colaborator))
  end

  test "should destroy colaborator" do
    assert_difference('Colaborator.count', -1) do
      delete :destroy, id: @colaborator
    end

    assert_redirected_to colaborators_path
  end
end
