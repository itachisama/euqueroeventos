class Cidade < ActiveRecord::Base
  set_table_name "cidades"
  belongs_to :estado
  validates :nome,:estado_id, :presence =>true
  validates :nome,:length=> { :maximum => 50 }
end
