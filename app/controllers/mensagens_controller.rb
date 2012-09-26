
class MensagensController < ApplicationController
   load_and_authorize_resource

  # GET /mensagens
  # GET /mensagens.json
  def index
    @mensagens = Mensagem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mensagens }
    end
  end

  # GET /mensagens/1
  # GET /mensagens/1.json
  def show
    @mensagem = Mensagem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mensagem }
    end
  end

  # GET /mensagens/new
  # GET /mensagens/new.json
  def new
    @mensagem = Mensagem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mensagem }
    end
  end

  # GET /mensagens/1/edit
  def edit
    @mensagem = Mensagem.find(params[:id])
  end

  # POST /mensagens
  # POST /mensagens.json
  def create
    @mensagem = Mensagem.new(params[:mensagem])

    respond_to do |format|
      if @mensagem.save
        format.html { redirect_to @mensagem, notice: 'Mensagem was successfully created.' }
        format.json { render json: @mensagem, status: :created, location: @mensagem }
      else
        format.html { render action: "new" }
        format.json { render json: @mensagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mensagens/1
  # PUT /mensagens/1.json
  def update
    @mensagem = Mensagem.find(params[:id])

    respond_to do |format|
      if @mensagem.update_attributes(params[:mensagem])
        format.html { redirect_to @mensagem, notice: 'Mensagem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mensagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mensagens/1
  # DELETE /mensagens/1.json
  def destroy
    @mensagem = Mensagem.find(params[:id])
    @mensagem.destroy

    respond_to do |format|
      format.html { redirect_to mensagens_url }
      format.json { head :no_content }
    end
  end
end
