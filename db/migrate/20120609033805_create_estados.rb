class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados, :id => false  do |t|
      t.string :uf, :null =>false, :limit=>2
      t.string :nome, :null =>false, :limit=>30
      t.timestamps
    end
    execute "ALTER TABLE estados ADD PRIMARY KEY (uf);"
  end
end
