require 'test_helper'

class DoctorspatientsControllerTest < ActionController::TestCase
  setup do
    @doctorspatient = doctorspatients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doctorspatients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doctorspatient" do
    assert_difference('Doctorspatient.count') do
      post :create, doctorspatient: { doctor_id: @doctorspatient.doctor_id, patient_id: @doctorspatient.patient_id }
    end

    assert_redirected_to doctorspatient_path(assigns(:doctorspatient))
  end

  test "should show doctorspatient" do
    get :show, id: @doctorspatient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doctorspatient
    assert_response :success
  end

  test "should update doctorspatient" do
    put :update, id: @doctorspatient, doctorspatient: { doctor_id: @doctorspatient.doctor_id, patient_id: @doctorspatient.patient_id }
    assert_redirected_to doctorspatient_path(assigns(:doctorspatient))
  end

  test "should destroy doctorspatient" do
    assert_difference('Doctorspatient.count', -1) do
      delete :destroy, id: @doctorspatient
    end

    assert_redirected_to doctorspatients_path
  end
end
