require 'test_helper'

class ColaboradoresControllerTest < ActionController::TestCase
  setup do
    @colaboradore = colaboradores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:colaboradores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create colaboradore" do
    assert_difference('Colaboradore.count') do
      post :create, colaboradore: { nome: @colaboradore.nome }
    end

    assert_redirected_to colaboradore_path(assigns(:colaboradore))
  end

  test "should show colaboradore" do
    get :show, id: @colaboradore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @colaboradore
    assert_response :success
  end

  test "should update colaboradore" do
    patch :update, id: @colaboradore, colaboradore: { nome: @colaboradore.nome }
    assert_redirected_to colaboradore_path(assigns(:colaboradore))
  end

  test "should destroy colaboradore" do
    assert_difference('Colaboradore.count', -1) do
      delete :destroy, id: @colaboradore
    end

    assert_redirected_to colaboradores_path
  end
end
