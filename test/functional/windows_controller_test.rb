require 'test_helper'

class WindowsControllerTest < ActionController::TestCase
  setup do
    @window = windows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:windows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create window" do
    assert_difference('Window.count') do
      post :create, window: @window.attributes
    end

    assert_redirected_to window_path(assigns(:window))
  end

  test "should show window" do
    get :show, id: @window
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @window
    assert_response :success
  end

  test "should update window" do
    put :update, id: @window, window: @window.attributes
    assert_redirected_to window_path(assigns(:window))
  end

  test "should destroy window" do
    assert_difference('Window.count', -1) do
      delete :destroy, id: @window
    end

    assert_redirected_to windows_path
  end
end
