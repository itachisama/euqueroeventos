class Mensagem < ActiveRecord::Base
  attr_accessible :assunto, :dataEnvio, :mensagem, :status_mensagem, :remetente, :destinatario
  belongs_to :usuario,:class_name => 'remetente', :foreign_key => 'remetente_id'
  belongs_to :usuario,:class_name => 'destinatario', :foreign_key => 'destinatario_id'
  belongs_to :status_mensagem
  validates :assunto, :mensagem,:presence=>true
end
