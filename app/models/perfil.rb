class Perfil < ActiveRecord::Base
  attr_accessible :nome, :ativo
  validates :nome,:ativo =>true
  validates :nome,:length=> { :maximum => 50 }
end
