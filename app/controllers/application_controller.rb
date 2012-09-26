class ApplicationController < ActionController::Base
  
  helper :all
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Acesso negado."
    redirect_to root_url
  end
  
  def current_ability
    @current_ability ||= Ability.new(current_conta)
  end

end
