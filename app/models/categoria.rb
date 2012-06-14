class Categoria < ActiveRecord::Base
  attr_accessible :nome, :ativo
  validates :nome,:ativo =>true
  validates :nome,:length=> { :maximum => 30 }
end
