require 'test_helper'

class PublicasControllerTest < ActionController::TestCase
  setup do
    @publica = publicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publica" do
    assert_difference('Publica.count') do
      post :create, publica: { texto: @publica.texto, titulo: @publica.titulo }
    end

    assert_redirected_to publica_path(assigns(:publica))
  end

  test "should show publica" do
    get :show, id: @publica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @publica
    assert_response :success
  end

  test "should update publica" do
    patch :update, id: @publica, publica: { texto: @publica.texto, titulo: @publica.titulo }
    assert_redirected_to publica_path(assigns(:publica))
  end

  test "should destroy publica" do
    assert_difference('Publica.count', -1) do
      delete :destroy, id: @publica
    end

    assert_redirected_to publicas_path
  end
end
