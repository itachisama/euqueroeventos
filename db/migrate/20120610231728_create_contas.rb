class CreateContas < ActiveRecord::Migration
  def change
    create_table :contas do |t|      
      t.integer :perfil_id, :null=>false, :default=>1
      t.string :email, :null=>false
      t.string :encrypted_password, :null=>false
      t.boolean :ativo, :null=>false, :default=>true
      t.datetime :dataCadastro, :null=>false
      t.timestamps
    end
    execute "ALTER TABLE contas ADD FOREIGN KEY (perfil_id) REFERENCES perfis(id);"
  end
end
