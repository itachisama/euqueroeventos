class Categoria < ActiveRecord::Base
  attr_accessible :nome,:ativo
  set_table_name "categorias"
#  has_many :eventos
  validates :nome,:ativo, :presence=>true
  validates :nome,:length=> { :maximum => 30 }
end
