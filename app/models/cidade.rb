class Cidade < ActiveRecord::Base
  attr_accessible :nome,:estado_id
  belongs_to :estado
  validates :nome,:estado_id, :presence =>true
  validates :nome,:length=> { :maximum => 50 }
end
