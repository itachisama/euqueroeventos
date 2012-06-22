class StatusContato < ActiveRecord::Base
  attr_accessible :nome, :codigo
  has_many :contatos
  validates :nome, :codigo, :presence=>true
end
