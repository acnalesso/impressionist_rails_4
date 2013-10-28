require 'test_helper'

class SpongesControllerTest < ActionController::TestCase
  setup do
    @sponge = sponges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sponges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sponge" do
    assert_difference('Sponge.count') do
      post :create, sponge: {  }
    end

    assert_redirected_to sponge_path(assigns(:sponge))
  end

  test "should show sponge" do
    get :show, id: @sponge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sponge
    assert_response :success
  end

  test "should update sponge" do
    patch :update, id: @sponge, sponge: {  }
    assert_redirected_to sponge_path(assigns(:sponge))
  end

  test "should destroy sponge" do
    assert_difference('Sponge.count', -1) do
      delete :destroy, id: @sponge
    end

    assert_redirected_to sponges_path
  end
end
