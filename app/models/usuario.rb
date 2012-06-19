class Usuario < ActiveRecord::Base
  attr_accessible :cidade_id, :dataCadastro, :dataNascimento, :flgAddAutomatico, :flgMensagemPublica, :nome, :sexo, :webSite, :imagemPerfil
  belongs_to :cidade
  validates :nome, :presence =>true
  validates :nome,:webSite, :length=> { :maximum => 100 }
  validates :sexo, :length=> { :is => 1 }
end
