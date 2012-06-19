class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|

      t.timestamps
    end
  end
end
