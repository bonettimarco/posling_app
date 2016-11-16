require 'test_helper'

class LinhasControllerTest < ActionController::TestCase
  setup do
    @linha = linhas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:linhas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create linha" do
    assert_difference('Linha.count') do
      post :create, linha: { texto: @linha.texto }
    end

    assert_redirected_to linha_path(assigns(:linha))
  end

  test "should show linha" do
    get :show, id: @linha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @linha
    assert_response :success
  end

  test "should update linha" do
    patch :update, id: @linha, linha: { texto: @linha.texto }
    assert_redirected_to linha_path(assigns(:linha))
  end

  test "should destroy linha" do
    assert_difference('Linha.count', -1) do
      delete :destroy, id: @linha
    end

    assert_redirected_to linhas_path
  end
end
