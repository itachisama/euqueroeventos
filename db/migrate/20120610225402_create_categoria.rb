class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string :nome, :limit=>30, :null=>false
      t.boolean :ativo, :null=>false
      t.timestamps
    end
  end
end
