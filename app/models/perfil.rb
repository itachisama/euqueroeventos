class Perfil < ActiveRecord::Base
  set_table_name "perfis"
  attr_accessible :nome, :ativo
  validates :nome,:ativo =>true
  validates :nome,:length=> { :maximum => 50 }
end
