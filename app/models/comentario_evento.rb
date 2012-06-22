class ComentarioEvento < ActiveRecord::Base
  attr_accessible :ativo, :cadastro, :comentario, :evento_id, :usuario_id
end
