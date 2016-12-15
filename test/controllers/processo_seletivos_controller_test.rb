require 'test_helper'

class ProcessoSeletivosControllerTest < ActionController::TestCase
  setup do
    @processo_seletivo = processo_seletivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:processo_seletivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create processo_seletivo" do
    assert_difference('ProcessoSeletivo.count') do
      post :create, processo_seletivo: { cabecalho: @processo_seletivo.cabecalho, doutorado: @processo_seletivo.doutorado, mestrado: @processo_seletivo.mestrado, texto1: @processo_seletivo.texto1, texto2: @processo_seletivo.texto2 }
    end

    assert_redirected_to processo_seletivo_path(assigns(:processo_seletivo))
  end

  test "should show processo_seletivo" do
    get :show, id: @processo_seletivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @processo_seletivo
    assert_response :success
  end

  test "should update processo_seletivo" do
    patch :update, id: @processo_seletivo, processo_seletivo: { cabecalho: @processo_seletivo.cabecalho, doutorado: @processo_seletivo.doutorado, mestrado: @processo_seletivo.mestrado, texto1: @processo_seletivo.texto1, texto2: @processo_seletivo.texto2 }
    assert_redirected_to processo_seletivo_path(assigns(:processo_seletivo))
  end

  test "should destroy processo_seletivo" do
    assert_difference('ProcessoSeletivo.count', -1) do
      delete :destroy, id: @processo_seletivo
    end

    assert_redirected_to processo_seletivos_path
  end
end
