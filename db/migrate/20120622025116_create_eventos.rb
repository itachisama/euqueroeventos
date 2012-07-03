class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.datetime :inicio,:null=>false
      t.datetime :fim,:null=>false
      t.string :nome,:null=>false, :limit=>150
      t.text :descricao,:null=>false
      t.boolean :privado,:null=>false
      t.text :endereco,:null=>true
      t.boolean :maioridade,:null=>false
      t.boolean :gratuito,:null=>false
      t.boolean :limitado,:null=>false
      t.integer :vagasDisponiveis,:null=>true
      t.integer :vagasOferecidas,:null=>true
      t.integer :usuario_id,:null=>false
      t.integer :categoria_id,:null=>false
      t.integer :cidade_id,:null=>true
      t.integer :status_evento_id,:null=>false

      t.timestamps
    end
	execute "ALTER TABLE eventos ADD FOREIGN KEY (usuario_id) REFERENCES usuarios(id);"
	execute "ALTER TABLE eventos ADD FOREIGN KEY (categoria_id) REFERENCES categorias(id);"
	execute "ALTER TABLE eventos ADD FOREIGN KEY (cidade_id) REFERENCES cidades(id);"
	execute "ALTER TABLE eventos ADD FOREIGN KEY (status_evento_id) REFERENCES status_eventos(id);"
  end
end
