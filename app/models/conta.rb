class Contum < ActiveRecord::Base
  attr_accessible :ativo, :dataCadastro, :dataUltimoAcesso, :email, :perfil_id, :senha, :usuario_id
end
