require 'test_helper'

class PaginasEstaticasControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get quemSomos" do
    get :quemSomos
    assert_response :success
  end

  test "should get regimentos" do
    get :regimentos
    assert_response :success
  end

  test "should get legislacao" do
    get :legislacao
    assert_response :success
  end

  test "should get estruturaCurricular" do
    get :estruturaCurricular
    assert_response :success
  end

  test "should get manualDoAluno" do
    get :manualDoAluno
    assert_response :success
  end

  test "should get calendarioEMatricula" do
    get :calendarioEMatricula
    assert_response :success
  end

  test "should get editais" do
    get :editais
    assert_response :success
  end

  test "should get quadroDeHorarios" do
    get :quadroDeHorarios
    assert_response :success
  end

  test "should get manualDoAluno" do
    get :manualDoAluno
    assert_response :success
  end

  test "should get formularios" do
    get :formularios
    assert_response :success
  end

end
