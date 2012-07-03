class CreateContas < ActiveRecord::Migration
  def change
    create_table :contas do |t|
      t.integer :usuario_id, :null=>false
      t.integer :perfil_id, :null=>false
      t.string :email, :null=>false
      t.string :encrypted_password, :null=>false
      t.boolean :ativo, :null=>false
      t.datetime :dataCadastro, :null=>false

      t.timestamps
    end
    execute "ALTER TABLE contas ADD FOREIGN KEY (usuario_id) REFERENCES usuarios(id);"
    execute "ALTER TABLE contas ADD FOREIGN KEY (perfil_id) REFERENCES perfis(id);"
  end
end
