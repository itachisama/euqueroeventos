class Perfil < ActiveRecord::Base
  attr_accessible :nome, :ativo
  has_one :conta
  validates :nome,:ativo :presence=>true
  validates :nome,:length=> { :maximum => 50 }
end
