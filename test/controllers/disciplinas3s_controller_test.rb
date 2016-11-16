require 'test_helper'

class Disciplinas3sControllerTest < ActionController::TestCase
  setup do
    @disciplinas3 = disciplinas3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disciplinas3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disciplinas3" do
    assert_difference('Disciplinas3.count') do
      post :create, disciplinas3: { texto: @disciplinas3.texto }
    end

    assert_redirected_to disciplinas3_path(assigns(:disciplinas3))
  end

  test "should show disciplinas3" do
    get :show, id: @disciplinas3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disciplinas3
    assert_response :success
  end

  test "should update disciplinas3" do
    patch :update, id: @disciplinas3, disciplinas3: { texto: @disciplinas3.texto }
    assert_redirected_to disciplinas3_path(assigns(:disciplinas3))
  end

  test "should destroy disciplinas3" do
    assert_difference('Disciplinas3.count', -1) do
      delete :destroy, id: @disciplinas3
    end

    assert_redirected_to disciplinas3s_path
  end
end
