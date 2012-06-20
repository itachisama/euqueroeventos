class CreateCidades < ActiveRecord::Migration
  def change
    create_table :cidades do |t|
      t.string :nome, :limit=>50, :null=>false
      t.integer :estado_id, :null=>false
      t.timestamps
    end
    execute "ALTER TABLE cidades ADD FOREIGN KEY (estado_id) REFERENCES estados(id);"
  end
end
