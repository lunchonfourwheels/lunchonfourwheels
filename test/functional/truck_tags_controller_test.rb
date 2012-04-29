require 'test_helper'

class TruckTagsControllerTest < ActionController::TestCase
  setup do
    @truck_tag = truck_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:truck_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create truck_tag" do
    assert_difference('TruckTag.count') do
      post :create, truck_tag: @truck_tag.attributes
    end

    assert_redirected_to truck_tag_path(assigns(:truck_tag))
  end

  test "should show truck_tag" do
    get :show, id: @truck_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @truck_tag
    assert_response :success
  end

  test "should update truck_tag" do
    put :update, id: @truck_tag, truck_tag: @truck_tag.attributes
    assert_redirected_to truck_tag_path(assigns(:truck_tag))
  end

  test "should destroy truck_tag" do
    assert_difference('TruckTag.count', -1) do
      delete :destroy, id: @truck_tag
    end

    assert_redirected_to truck_tags_path
  end
end
