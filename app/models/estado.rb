class Estado < ActiveRecord::Base
  attr_accessible :uf
  set_table_name "estados"
  has_many :cidades
  validates :uf, :presence=>true
end
