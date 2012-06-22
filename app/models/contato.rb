class Contato < ActiveRecord::Base
	belongs_to :lista_contato
	has_many :usuarios
	attr_accessible :alteracao, :inclusao, :lista_contato_id, :status_contato_id, :usuario_id  
	validates :inclusao,:alteracao,:lista_contato_id, :status_contato_id, :usuario_id, :presence=>true
end
