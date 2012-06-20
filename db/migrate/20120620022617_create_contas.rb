class CreateContas < ActiveRecord::Migration
  def change
    create_table :contas do |t|
      t.integer :usuario_id
      t.integer :perfil_id
      t.string :email
      t.string :senha
      t.boolean :ativo
      t.datetime :dataCadastro

      t.timestamps
    end
    execute "ALTER TABLE contas ADD FOREIGN KEY (usuario_id) REFERENCES usuarios(id);"
    execute "ALTER TABLE contas ADD FOREIGN KEY (perfil_id) REFERENCES perfis(id);"
  end
end
