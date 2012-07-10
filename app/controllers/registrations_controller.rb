# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  def new
    super
    @usuario = Usuario.new    
#    respond_to do |format|
#      format.html # new.html.erb
#      format.json { render json: @usuario }
#    end
  end

  def create
    # add custom create logic here
    @conta = Conta.new(params[:conta])
    @usuario =  Usuario.new(params[:usuario])
    @usuario.dataCadastro = Date.current
    @usuario.nome = "Daniel"
    @usuario.sexo="M"
    @usuario.flgAddAutomatico =true
    @usuario.flgMensagemPublica = true
    @usuario.cidade_id =1
    @conta.dataCadastro=Date.current
    @conta.perfil_id = 1
    @conta.ativo = true
   
    respond_to do |format|
      if @usuario.save
      @conta.usuario_id = @usuario.id
      @conta.usuario = @usuario
        if @conta.save
          format.html { redirect_to @conta, notice: 'Conta was successfully created.' }
          format.json { render json: @conta, status: :created, location: @conta }
        else
          format.html { render action: "new" }
          format.json { render json: @conta.errors, status: :unprocessable_entity }
        end
      else
          format.html { render action: "new" }
          format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    super
  end
end