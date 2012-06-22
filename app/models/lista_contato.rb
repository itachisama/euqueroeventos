class ListaContato < ActiveRecord::Base
  attr_accessible :nome, :padrao, :privada, :usuario_id
  has_many :contatos
  belongs_to :usuario
  validates :nome, :padrao, :privada, :usuario_id, :presence=>true
end
