require 'test_helper'

class UserjobsControllerTest < ActionController::TestCase
  setup do
    @userjob = userjobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userjobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userjob" do
    assert_difference('Userjob.count') do
      post :create, userjob: { jobid: @userjob.jobid, userid: @userjob.userid }
    end

    assert_redirected_to userjob_path(assigns(:userjob))
  end

  test "should show userjob" do
    get :show, id: @userjob
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userjob
    assert_response :success
  end

  test "should update userjob" do
    patch :update, id: @userjob, userjob: { jobid: @userjob.jobid, userid: @userjob.userid }
    assert_redirected_to userjob_path(assigns(:userjob))
  end

  test "should destroy userjob" do
    assert_difference('Userjob.count', -1) do
      delete :destroy, id: @userjob
    end

    assert_redirected_to userjobs_path
  end
end
