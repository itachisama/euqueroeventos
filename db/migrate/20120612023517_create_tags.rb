class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :nome, :null=>false, :limit=>20
      t.boolean :ativo, :null=>false

      t.timestamps
    end
  end
end
