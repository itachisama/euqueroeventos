class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.integer :lista_contato_id,:null=>false
      t.integer :usuario_id,:null=>false
      t.integer :status_contato_id,:null=>false
      t.datetime :inclusao,:null=>false
      t.datetime :alteracao,:null=>false

      t.timestamps
    end
	execute "ALTER TABLE contatos ADD FOREIGN KEY (lista_contato_id) REFERENCES listas_contato(id);"
	execute "ALTER TABLE contatos ADD FOREIGN KEY (status_contato_id) REFERENCES status_contatos(id);"
  end
end
