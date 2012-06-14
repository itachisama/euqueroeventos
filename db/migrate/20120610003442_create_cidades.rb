class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.string :nome, :limit=>50, :null=>false
      t.string :estado_uf, :null=>false, :references => :estados, :limit=>2
      t.timestamps
    end
    execute "ALTER TABLE cidades ADD FOREIGN KEY (estado_uf) REFERENCES estados(uf);"
  end
end
