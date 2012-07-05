class Cidade < ActiveRecord::Base
  attr_accessible :nome,:estado_id
  belongs_to :estado
  has_many :usuarios
  has_many :eventos

  validates :nome,:estado_id, :presence =>true
  validates :nome,:length=> { :maximum => 50 }

  def self.find_by_estado_id(estado_id)
    find(:all, :conditions => ["estado_id = ?", estado_id])
  end
  
end
