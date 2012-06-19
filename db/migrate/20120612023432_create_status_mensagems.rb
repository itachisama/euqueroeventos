class CreateStatusMensagems < ActiveRecord::Migration
  def change
    create_table :status_mensagems do |t|

      t.timestamps
    end
  end
end
