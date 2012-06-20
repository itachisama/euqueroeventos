class Conta < ActiveRecord::Base
  attr_accessible :ativo, :dataCadastro, :email, :perfil_id, :senha, :usuario_id
  belongs_to :perfil
  belongs_to :usuario

  validates :senha,:confirmation=>true
  validates :email,:uniqueness=>true
  
end
