class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome, :limit=>100, :null=>false
      t.string :webSite, :limit=>100, :null=>true
      t.date :dataNascimento, :null=>true
      t.string :sexo, :limit=>1, :null=>true
      t.datetime :dataCadastro, :null=>false
      t.boolean :flgMensagemPublica, :null=>false,:default=>true
      t.boolean :flgAddAutomatico, :null=>false,:default=>false
      t.integer :cidade_id, :null=>true
      t.integer :conta_id, :null=>false
      t.binary :imagemPerfil, :null=>true
      t.timestamps
    end
    execute "ALTER TABLE usuarios ADD FOREIGN KEY (cidade_id) REFERENCES cidades(id);"
    execute "ALTER TABLE usuarios ADD FOREIGN KEY (conta_id) REFERENCES contas(id);"
  end
end
