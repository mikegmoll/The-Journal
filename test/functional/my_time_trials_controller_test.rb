require 'test_helper'

class MyTimeTrialsControllerTest < ActionController::TestCase
  setup do
    @my_time_trial = my_time_trials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_time_trials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_time_trial" do
    assert_difference('MyTimeTrial.count') do
      post :create, :my_time_trial => { :Date => @my_time_trial.Date, :My_Time => @my_time_trial.My_Time, :Other_Details => @my_time_trial.Other_Details, :Time_Trial_Type => @my_time_trial.Time_Trial_Type, :sport => @my_time_trial.sport }
    end

    assert_redirected_to my_time_trial_path(assigns(:my_time_trial))
  end

  test "should show my_time_trial" do
    get :show, :id => @my_time_trial
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @my_time_trial
    assert_response :success
  end

  test "should update my_time_trial" do
    put :update, :id => @my_time_trial, :my_time_trial => { :Date => @my_time_trial.Date, :My_Time => @my_time_trial.My_Time, :Other_Details => @my_time_trial.Other_Details, :Time_Trial_Type => @my_time_trial.Time_Trial_Type, :sport => @my_time_trial.sport }
    assert_redirected_to my_time_trial_path(assigns(:my_time_trial))
  end

  test "should destroy my_time_trial" do
    assert_difference('MyTimeTrial.count', -1) do
      delete :destroy, :id => @my_time_trial
    end

    assert_redirected_to my_time_trials_path
  end
end
