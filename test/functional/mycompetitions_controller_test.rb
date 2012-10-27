require 'test_helper'

class MycompetitionsControllerTest < ActionController::TestCase
  setup do
    @mycompetition = mycompetitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mycompetitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mycompetition" do
    assert_difference('Mycompetition.count') do
      post :create, :mycompetition => { :Date => @mycompetition.Date, :My_result => @mycompetition.My_result, :competition_Name => @mycompetition.competition_Name, :other_details => @mycompetition.other_details, :sport => @mycompetition.sport, :time => @mycompetition.time }
    end

    assert_redirected_to mycompetition_path(assigns(:mycompetition))
  end

  test "should show mycompetition" do
    get :show, :id => @mycompetition
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mycompetition
    assert_response :success
  end

  test "should update mycompetition" do
    put :update, :id => @mycompetition, :mycompetition => { :Date => @mycompetition.Date, :My_result => @mycompetition.My_result, :competition_Name => @mycompetition.competition_Name, :other_details => @mycompetition.other_details, :sport => @mycompetition.sport, :time => @mycompetition.time }
    assert_redirected_to mycompetition_path(assigns(:mycompetition))
  end

  test "should destroy mycompetition" do
    assert_difference('Mycompetition.count', -1) do
      delete :destroy, :id => @mycompetition
    end

    assert_redirected_to mycompetitions_path
  end
end
