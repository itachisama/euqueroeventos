class StatusMensagem < ActiveRecord::Base
  attr_accessible :nome, :codigo
  has_many :mensagens
  validates :nome, :codigo, :presence=>true
end
