class Usuario < ActiveRecord::Base
	attr_accessible :usuario, :nome, :sexo, :website, :cidade_id, :conta_id
	validates :nome, :presence =>true
	validates :nome,:webSite, :length=> { :maximum => 100 }

	belongs_to :cidade
	belongs_to :conta
	has_many :mensagens
	has_many :eventos

end
