class Estado < ActiveRecord::Base
  set_table_name "estados"
  has_many :cidades
  validates :uf, :presence=>true
end
