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
    respond_to do |format|
        if @conta.save && @conta.create_usuario()
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