class CreateListasContato < ActiveRecord::Migration
  def change
    create_table :listas_contato do |t|
      t.integer :usuario_id, :null=>false
      t.string :nome, :null=>false, :limit=>30
      t.boolean :padrao, :null=>false
      t.boolean :privada, :null=>false

      t.timestamps
    end
  end
end
