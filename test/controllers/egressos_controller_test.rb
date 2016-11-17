require 'test_helper'

class EgressosControllerTest < ActionController::TestCase
  setup do
    @egresso = egressos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:egressos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create egresso" do
    assert_difference('Egresso.count') do
      post :create, egresso: { ano: @egresso.ano, defesa: @egresso.defesa, lattes: @egresso.lattes, nivel: @egresso.nivel, nome: @egresso.nome, orientador: @egresso.orientador }
    end

    assert_redirected_to egresso_path(assigns(:egresso))
  end

  test "should show egresso" do
    get :show, id: @egresso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @egresso
    assert_response :success
  end

  test "should update egresso" do
    patch :update, id: @egresso, egresso: { ano: @egresso.ano, defesa: @egresso.defesa, lattes: @egresso.lattes, nivel: @egresso.nivel, nome: @egresso.nome, orientador: @egresso.orientador }
    assert_redirected_to egresso_path(assigns(:egresso))
  end

  test "should destroy egresso" do
    assert_difference('Egresso.count', -1) do
      delete :destroy, id: @egresso
    end

    assert_redirected_to egressos_path
  end
end
