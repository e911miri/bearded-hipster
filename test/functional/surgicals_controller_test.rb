require 'test_helper'

class SurgicalsControllerTest < ActionController::TestCase
  setup do
    @surgical = surgicals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surgicals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surgical" do
    assert_difference('Surgical.count') do
      post :create, surgical: { condition: @surgical.condition, patient_id: @surgical.patient_id, procedure: @surgical.procedure, surgeon: @surgical.surgeon }
    end

    assert_redirected_to surgical_path(assigns(:surgical))
  end

  test "should show surgical" do
    get :show, id: @surgical
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surgical
    assert_response :success
  end

  test "should update surgical" do
    put :update, id: @surgical, surgical: { condition: @surgical.condition, patient_id: @surgical.patient_id, procedure: @surgical.procedure, surgeon: @surgical.surgeon }
    assert_redirected_to surgical_path(assigns(:surgical))
  end

  test "should destroy surgical" do
    assert_difference('Surgical.count', -1) do
      delete :destroy, id: @surgical
    end

    assert_redirected_to surgicals_path
  end
end
