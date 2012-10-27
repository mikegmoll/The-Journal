require 'test_helper'

class MyjournalsControllerTest < ActionController::TestCase
  setup do
    @myjournal = myjournals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myjournals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myjournal" do
    assert_difference('Myjournal.count') do
      post :create, :myjournal => { :activity => @myjournal.activity, :content => @myjournal.content, :name => @myjournal.name }
    end

    assert_redirected_to myjournal_path(assigns(:myjournal))
  end

  test "should show myjournal" do
    get :show, :id => @myjournal
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @myjournal
    assert_response :success
  end

  test "should update myjournal" do
    put :update, :id => @myjournal, :myjournal => { :activity => @myjournal.activity, :content => @myjournal.content, :name => @myjournal.name }
    assert_redirected_to myjournal_path(assigns(:myjournal))
  end

  test "should destroy myjournal" do
    assert_difference('Myjournal.count', -1) do
      delete :destroy, :id => @myjournal
    end

    assert_redirected_to myjournals_path
  end
end
