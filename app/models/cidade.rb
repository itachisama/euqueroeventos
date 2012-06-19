class Cidade < ActiveRecord::Base
  attr_accessible :nome, :estado_uf
  belongs_to :estado
  validates :nome,:estado_uf, :presence =>true
  validates :nome,:length=> { :maximum => 50 }
end
