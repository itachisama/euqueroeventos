require 'test_helper'

class ComentarioEventosControllerTest < ActionController::TestCase
  setup do
    @comentario_evento = comentario_eventos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comentario_eventos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comentario_evento" do
    assert_difference('ComentarioEvento.count') do
      post :create, comentario_evento: { ativo: @comentario_evento.ativo, cadastro: @comentario_evento.cadastro, comentario: @comentario_evento.comentario, evento_id: @comentario_evento.evento_id, usuario_id: @comentario_evento.usuario_id }
    end

    assert_redirected_to comentario_evento_path(assigns(:comentario_evento))
  end

  test "should show comentario_evento" do
    get :show, id: @comentario_evento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comentario_evento
    assert_response :success
  end

  test "should update comentario_evento" do
    put :update, id: @comentario_evento, comentario_evento: { ativo: @comentario_evento.ativo, cadastro: @comentario_evento.cadastro, comentario: @comentario_evento.comentario, evento_id: @comentario_evento.evento_id, usuario_id: @comentario_evento.usuario_id }
    assert_redirected_to comentario_evento_path(assigns(:comentario_evento))
  end

  test "should destroy comentario_evento" do
    assert_difference('ComentarioEvento.count', -1) do
      delete :destroy, id: @comentario_evento
    end

    assert_redirected_to comentario_eventos_path
  end
end
