class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :texto

      t.timestamps null: false
    end
  end
end
