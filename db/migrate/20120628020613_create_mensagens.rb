class CreateMensagens < ActiveRecord::Migration
  def change
    create_table :mensagens do |t|
      t.text :mensagem, :null=>false
      t.datetime :dataEnvio, :null=>false
      t.string :assunto, :null=>false,:limit=>100
      t.integer :status_mensagem_id, :null=>false
      t.integer :remetente_id, :null=>false
      t.integer :destinatario_id, :null=>false

      t.timestamps
    end
    execute "ALTER TABLE mensagens ADD FOREIGN KEY (remetente_id) REFERENCES usuarios(id);"
    execute "ALTER TABLE mensagens ADD FOREIGN KEY (destinatario_id) REFERENCES usuarios(id);"
  end
end
