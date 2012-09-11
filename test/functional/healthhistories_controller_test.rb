require 'test_helper'

class HealthhistoriesControllerTest < ActionController::TestCase
  setup do
    @healthhistory = healthhistories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:healthhistories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create healthhistory" do
    assert_difference('Healthhistory.count') do
      post :create, healthhistory: { information: @healthhistory.information, patient_id: @healthhistory.patient_id }
    end

    assert_redirected_to healthhistory_path(assigns(:healthhistory))
  end

  test "should show healthhistory" do
    get :show, id: @healthhistory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @healthhistory
    assert_response :success
  end

  test "should update healthhistory" do
    put :update, id: @healthhistory, healthhistory: { information: @healthhistory.information, patient_id: @healthhistory.patient_id }
    assert_redirected_to healthhistory_path(assigns(:healthhistory))
  end

  test "should destroy healthhistory" do
    assert_difference('Healthhistory.count', -1) do
      delete :destroy, id: @healthhistory
    end

    assert_redirected_to healthhistories_path
  end
end
