class Conta < ActiveRecord::Base
  attr_accessible :ativo, :dataCadastro, :email, :perfil_id, :senha, :usuario_id
end
