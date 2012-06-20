class Categoria < ActiveRecord::Base
  set_table_name "categorias"
#  has_many :eventos
  validates :nome,:ativo, :presence=>true
  validates :nome,:length=> { :maximum => 30 }
end
