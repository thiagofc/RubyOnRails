require 'test_helper'

class HoursRegistrationsControllerTest < ActionController::TestCase
  setup do
    @hours_registration = hours_registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hours_registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hours_registration" do
    assert_difference('HoursRegistration.count') do
      post :create, hours_registration: { date: @hours_registration.date, entrance1: @hours_registration.entrance1, entrance2: @hours_registration.entrance2, entrance3: @hours_registration.entrance3, exit1: @hours_registration.exit1, exit2: @hours_registration.exit2, exit3: @hours_registration.exit3 }
    end

    assert_redirected_to hours_registration_path(assigns(:hours_registration))
  end

  test "should show hours_registration" do
    get :show, id: @hours_registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hours_registration
    assert_response :success
  end

  test "should update hours_registration" do
    patch :update, id: @hours_registration, hours_registration: { date: @hours_registration.date, entrance1: @hours_registration.entrance1, entrance2: @hours_registration.entrance2, entrance3: @hours_registration.entrance3, exit1: @hours_registration.exit1, exit2: @hours_registration.exit2, exit3: @hours_registration.exit3 }
    assert_redirected_to hours_registration_path(assigns(:hours_registration))
  end

  test "should destroy hours_registration" do
    assert_difference('HoursRegistration.count', -1) do
      delete :destroy, id: @hours_registration
    end

    assert_redirected_to hours_registrations_path
  end
end
