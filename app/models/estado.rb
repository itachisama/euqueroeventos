class Estado < ActiveRecord::Base
  attr_accessible :uf
  has_many :cidades
  validates :uf, :presence=>true
end
