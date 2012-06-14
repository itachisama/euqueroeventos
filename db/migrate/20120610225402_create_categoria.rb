class CreateCategoria < ActiveRecord::Migration
  def change
    create_table :categoria do |t|
      t.string :nome, :limit=>30, :null=>false
      t.boolean :ativo, :null=>false
      t.timestamps
    end
  end
end
