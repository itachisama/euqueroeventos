class CreatePerfils < ActiveRecord::Migration
  def change
    create_table :perfis do |t|
      t.string :nome,:limit=>50, :null=>false
      t.boolean :ativo, :null=>false
      t.timestamps
    end
  end
end
