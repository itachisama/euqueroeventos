class Estado < ActiveRecord::Base
  set_table_name "estados"
  has_many :cidades
  validates :nome,:uf, :presence=>true
  validates :nome, :length => { :maximum => 30 }

end
