class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.integer :lista_contato_id
      t.integer :usuario_id
      t.integer :status_contato_id
      t.datetime :inclusao
      t.datetime :alteracao

      t.timestamps
    end
  end
end
