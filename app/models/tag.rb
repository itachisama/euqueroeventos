class Tag < ActiveRecord::Base
  set_table_name "tags"
  attr_accessible :ativo, :nome
end
