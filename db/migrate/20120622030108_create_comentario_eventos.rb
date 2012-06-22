class CreateComentarioEventos < ActiveRecord::Migration
  def change
    create_table :comentario_eventos do |t|
      t.integer :usuario_id
      t.integer :evento_id
      t.boolean :ativo
      t.datetime :cadastro
      t.text :comentario

      t.timestamps
    end
  end
end
