require 'test_helper'

class FinaisControllerTest < ActionController::TestCase
  setup do
    @finai = finais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:finais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create finai" do
    assert_difference('Finai.count') do
      post :create, finai: { texto: @finai.texto }
    end

    assert_redirected_to finai_path(assigns(:finai))
  end

  test "should show finai" do
    get :show, id: @finai
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @finai
    assert_response :success
  end

  test "should update finai" do
    patch :update, id: @finai, finai: { texto: @finai.texto }
    assert_redirected_to finai_path(assigns(:finai))
  end

  test "should destroy finai" do
    assert_difference('Finai.count', -1) do
      delete :destroy, id: @finai
    end

    assert_redirected_to finais_path
  end
end
