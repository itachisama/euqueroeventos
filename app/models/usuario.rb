class Usuario < ActiveRecord::Base
  set_table_name "usuarios"

  validates :nome, :presence =>true
  validates :nome,:webSite, :length=> { :maximum => 100 }
  validates :sexo, :length=> { :is => 1 }

  belongs_to :cidade
  has_one :conta


end
