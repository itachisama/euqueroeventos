class CreateComentarioEventos < ActiveRecord::Migration
  def change
    create_table :comentario_eventos do |t|
      t.integer :usuario_id, :null=>false
      t.integer :evento_id, :null=>false
      t.boolean :ativo, :null=>false
      t.datetime :cadastro, :null=>false
      t.text :comentario, :null=>false, :limit=>300

      t.timestamps
    end
	execute "ALTER TABLE comentario_eventos ADD FOREIGN KEY (usuario_id) REFERENCES usuarios(id);"
	execute "ALTER TABLE comentario_eventos ADD FOREIGN KEY (evento_id) REFERENCES eventos(id);"
  end
end
