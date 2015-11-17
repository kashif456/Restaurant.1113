require 'test_helper'

class TextNinjasControllerTest < ActionController::TestCase
  setup do
    @text_ninja = text_ninjas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:text_ninjas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create text_ninja" do
    assert_difference('TextNinja.count') do
      post :create, text_ninja: { index: @text_ninja.index }
    end

    assert_redirected_to text_ninja_path(assigns(:text_ninja))
  end

  test "should show text_ninja" do
    get :show, id: @text_ninja
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @text_ninja
    assert_response :success
  end

  test "should update text_ninja" do
    patch :update, id: @text_ninja, text_ninja: { index: @text_ninja.index }
    assert_redirected_to text_ninja_path(assigns(:text_ninja))
  end

  test "should destroy text_ninja" do
    assert_difference('TextNinja.count', -1) do
      delete :destroy, id: @text_ninja
    end

    assert_redirected_to text_ninjas_path
  end
end
