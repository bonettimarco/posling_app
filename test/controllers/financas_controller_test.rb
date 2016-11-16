require 'test_helper'

class FinancasControllerTest < ActionController::TestCase
  setup do
    @financa = financas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:financas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create financa" do
    assert_difference('Financa.count') do
      post :create, financa: { cabecalho: @financa.cabecalho, texto: @financa.texto }
    end

    assert_redirected_to financa_path(assigns(:financa))
  end

  test "should show financa" do
    get :show, id: @financa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @financa
    assert_response :success
  end

  test "should update financa" do
    patch :update, id: @financa, financa: { cabecalho: @financa.cabecalho, texto: @financa.texto }
    assert_redirected_to financa_path(assigns(:financa))
  end

  test "should destroy financa" do
    assert_difference('Financa.count', -1) do
      delete :destroy, id: @financa
    end

    assert_redirected_to financas_path
  end
end
