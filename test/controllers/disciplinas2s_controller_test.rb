require 'test_helper'

class Disciplinas2sControllerTest < ActionController::TestCase
  setup do
    @disciplinas2 = disciplinas2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disciplinas2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disciplinas2" do
    assert_difference('Disciplinas2.count') do
      post :create, disciplinas2: { texto: @disciplinas2.texto }
    end

    assert_redirected_to disciplinas2_path(assigns(:disciplinas2))
  end

  test "should show disciplinas2" do
    get :show, id: @disciplinas2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disciplinas2
    assert_response :success
  end

  test "should update disciplinas2" do
    patch :update, id: @disciplinas2, disciplinas2: { texto: @disciplinas2.texto }
    assert_redirected_to disciplinas2_path(assigns(:disciplinas2))
  end

  test "should destroy disciplinas2" do
    assert_difference('Disciplinas2.count', -1) do
      delete :destroy, id: @disciplinas2
    end

    assert_redirected_to disciplinas2s_path
  end
end
