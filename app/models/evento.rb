class Evento < ActiveRecord::Base
	attr_accessible :categoria_id, :cidade_id, :descricao, :endereco, :fim, :gratuito, :inicio, :limitado, :maioridade, :nome, :privado, :status_evento_id, :usuario_id, :vagasDisponiveis, :vagasOferecidas
	belongs_to :usuario
	belongs_to :status_evento
	belongs_to :categoria
	validates :categoria_id,:descricao,:fim, :gratuito, :inicio, :limitado,:maioridade, :nome, :privado, :status_evento_id, :usuario_id, :presence=>true
end
