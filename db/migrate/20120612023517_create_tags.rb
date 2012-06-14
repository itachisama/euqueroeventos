class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :nome
      t.boolean :ativo

      t.timestamps
    end
  end
end
