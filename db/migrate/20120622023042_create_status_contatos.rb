class CreateStatusContatos < ActiveRecord::Migration
  def change
    create_table :status_contatos do |t|

      t.timestamps
    end
  end
end
