class CreateMensagens < ActiveRecord::Migration
  def change
    create_table :mensagems do |t|

      t.timestamps
    end
  end
end
