class CreateListaContatos < ActiveRecord::Migration
  def change
    create_table :lista_contatos do |t|

      t.timestamps
    end
  end
end
