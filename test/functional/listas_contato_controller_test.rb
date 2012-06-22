require 'test_helper'

class ListasContatoControllerTest < ActionController::TestCase
  setup do
    @lista_contato = listas_contato(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listas_contato)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lista_contato" do
    assert_difference('ListaContato.count') do
      post :create, lista_contato: { nome: @lista_contato.nome, padrao: @lista_contato.padrao, privada: @lista_contato.privada, usuario_id: @lista_contato.usuario_id }
    end

    assert_redirected_to lista_contato_path(assigns(:lista_contato))
  end

  test "should show lista_contato" do
    get :show, id: @lista_contato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lista_contato
    assert_response :success
  end

  test "should update lista_contato" do
    put :update, id: @lista_contato, lista_contato: { nome: @lista_contato.nome, padrao: @lista_contato.padrao, privada: @lista_contato.privada, usuario_id: @lista_contato.usuario_id }
    assert_redirected_to lista_contato_path(assigns(:lista_contato))
  end

  test "should destroy lista_contato" do
    assert_difference('ListaContato.count', -1) do
      delete :destroy, id: @lista_contato
    end

    assert_redirected_to listas_contato_path
  end
end
