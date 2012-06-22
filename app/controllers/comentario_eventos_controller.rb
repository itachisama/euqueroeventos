
class ComentarioEventosController < ApplicationController
  # GET /comentario_eventos
  # GET /comentario_eventos.json
  def index
    @comentario_eventos = ComentarioEvento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comentario_eventos }
    end
  end

  # GET /comentario_eventos/1
  # GET /comentario_eventos/1.json
  def show
    @comentario_evento = ComentarioEvento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comentario_evento }
    end
  end

  # GET /comentario_eventos/new
  # GET /comentario_eventos/new.json
  def new
    @comentario_evento = ComentarioEvento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comentario_evento }
    end
  end

  # GET /comentario_eventos/1/edit
  def edit
    @comentario_evento = ComentarioEvento.find(params[:id])
  end

  # POST /comentario_eventos
  # POST /comentario_eventos.json
  def create
    @comentario_evento = ComentarioEvento.new(params[:comentario_evento])

    respond_to do |format|
      if @comentario_evento.save
        format.html { redirect_to @comentario_evento, notice: 'Comentario evento was successfully created.' }
        format.json { render json: @comentario_evento, status: :created, location: @comentario_evento }
      else
        format.html { render action: "new" }
        format.json { render json: @comentario_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comentario_eventos/1
  # PUT /comentario_eventos/1.json
  def update
    @comentario_evento = ComentarioEvento.find(params[:id])

    respond_to do |format|
      if @comentario_evento.update_attributes(params[:comentario_evento])
        format.html { redirect_to @comentario_evento, notice: 'Comentario evento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comentario_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comentario_eventos/1
  # DELETE /comentario_eventos/1.json
  def destroy
    @comentario_evento = ComentarioEvento.find(params[:id])
    @comentario_evento.destroy

    respond_to do |format|
      format.html { redirect_to comentario_eventos_url }
      format.json { head :no_content }
    end
  end
end
