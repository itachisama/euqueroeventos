# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  def new
    #super
    @conta = Conta.new
    @conta.build_usuario
  end
  
  def create
    # add custom create logic here
    @conta = Conta.new(params[:conta])
    @conta.dataCadastro = DateTime.now.utc
    @conta.usuario.dataCadastro= DateTime.now.utc
    respond_to do |format|
        if @conta.save
          format.html { redirect_to @conta, notice: 'Conta was successfully created.' }
          format.json { render json: @conta, status: :created, location: @conta }
        else
          format.html { render action: "new" }
          format.json { render json: @conta.errors, status: :unprocessable_entity }
        end 
    end
  end

  def update
    super
  end
end