require 'test_helper'

class EventosControllerTest < ActionController::TestCase
  setup do
    @evento = eventos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eventos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evento" do
    assert_difference('Evento.count') do
      post :create, evento: { categoria_id: @evento.categoria_id, cidade_id: @evento.cidade_id, descricao: @evento.descricao, endereco: @evento.endereco, fim: @evento.fim, gratuito: @evento.gratuito, inicio: @evento.inicio, limitado: @evento.limitado, maioridade: @evento.maioridade, nome: @evento.nome, privado: @evento.privado, status_evento_id: @evento.status_evento_id, usuario_id: @evento.usuario_id, vagasDisponiveis: @evento.vagasDisponiveis, vagasOferecidas: @evento.vagasOferecidas }
    end

    assert_redirected_to evento_path(assigns(:evento))
  end

  test "should show evento" do
    get :show, id: @evento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evento
    assert_response :success
  end

  test "should update evento" do
    put :update, id: @evento, evento: { categoria_id: @evento.categoria_id, cidade_id: @evento.cidade_id, descricao: @evento.descricao, endereco: @evento.endereco, fim: @evento.fim, gratuito: @evento.gratuito, inicio: @evento.inicio, limitado: @evento.limitado, maioridade: @evento.maioridade, nome: @evento.nome, privado: @evento.privado, status_evento_id: @evento.status_evento_id, usuario_id: @evento.usuario_id, vagasDisponiveis: @evento.vagasDisponiveis, vagasOferecidas: @evento.vagasOferecidas }
    assert_redirected_to evento_path(assigns(:evento))
  end

  test "should destroy evento" do
    assert_difference('Evento.count', -1) do
      delete :destroy, id: @evento
    end

    assert_redirected_to eventos_path
  end
end
