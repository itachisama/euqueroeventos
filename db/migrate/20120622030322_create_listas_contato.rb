class CreateListasContato < ActiveRecord::Migration
  def change
    create_table :listas_contato do |t|
      t.integer :usuario_id
      t.string :nome
      t.boolean :padrao
      t.boolean :privada

      t.timestamps
    end
  end
end
