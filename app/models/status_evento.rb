class StatusEvento < ActiveRecord::Base
  attr_accessible :nome, :codigo
  has_many :eventos
  validates :nome, :codigo, :presence=>true
end
