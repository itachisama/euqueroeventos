class ListaContato < ActiveRecord::Base
  attr_accessible :nome, :padrao, :privada, :usuario_id
end
