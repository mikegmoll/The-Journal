require 'test_helper'

class MyworkoutsControllerTest < ActionController::TestCase
  setup do
    @myworkout = myworkouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myworkouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myworkout" do
    assert_difference('Myworkout.count') do
      post :create, :myworkout => { :Date => @myworkout.Date, :details => @myworkout.details, :workouttype => @myworkout.workouttype }
    end

    assert_redirected_to myworkout_path(assigns(:myworkout))
  end

  test "should show myworkout" do
    get :show, :id => @myworkout
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @myworkout
    assert_response :success
  end

  test "should update myworkout" do
    put :update, :id => @myworkout, :myworkout => { :Date => @myworkout.Date, :details => @myworkout.details, :workouttype => @myworkout.workouttype }
    assert_redirected_to myworkout_path(assigns(:myworkout))
  end

  test "should destroy myworkout" do
    assert_difference('Myworkout.count', -1) do
      delete :destroy, :id => @myworkout
    end

    assert_redirected_to myworkouts_path
  end
end
