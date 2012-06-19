class Estado < ActiveRecord::Base
  attr_accessible :nome, :uf
  validates :nome,:uf, :presence=>true
  validates :nome, :length => { :maximum => 30 }

end
