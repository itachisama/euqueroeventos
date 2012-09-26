
class ListasContatoController < ApplicationController
   load_and_authorize_resource

  # GET /listas_contato
  # GET /listas_contato.json
  def index
    @listas_contato = ListaContato.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @listas_contato }
    end
  end

  # GET /listas_contato/1
  # GET /listas_contato/1.json
  def show
    @lista_contato = ListaContato.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lista_contato }
    end
  end

  # GET /listas_contato/new
  # GET /listas_contato/new.json
  def new
    @lista_contato = ListaContato.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lista_contato }
    end
  end

  # GET /listas_contato/1/edit
  def edit
    @lista_contato = ListaContato.find(params[:id])
  end

  # POST /listas_contato
  # POST /listas_contato.json
  def create
    @lista_contato = ListaContato.new(params[:lista_contato])

    respond_to do |format|
      if @lista_contato.save
        format.html { redirect_to @lista_contato, notice: 'Lista contato was successfully created.' }
        format.json { render json: @lista_contato, status: :created, location: @lista_contato }
      else
        format.html { render action: "new" }
        format.json { render json: @lista_contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /listas_contato/1
  # PUT /listas_contato/1.json
  def update
    @lista_contato = ListaContato.find(params[:id])

    respond_to do |format|
      if @lista_contato.update_attributes(params[:lista_contato])
        format.html { redirect_to @lista_contato, notice: 'Lista contato was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lista_contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listas_contato/1
  # DELETE /listas_contato/1.json
  def destroy
    @lista_contato = ListaContato.find(params[:id])
    @lista_contato.destroy

    respond_to do |format|
      format.html { redirect_to listas_contato_url }
      format.json { head :no_content }
    end
  end
end
