class Tag < ActiveRecord::Base
  attr_accessible	:nome, :ativo
  validates :nome,:presence =>true,
            :length =>{:maximum=>20}
end
