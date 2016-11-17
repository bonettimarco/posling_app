class CreateDados < ActiveRecord::Migration
  def change
    create_table :dados do |t|
      t.text :ano
      t.text :nivel

      t.timestamps null: false
    end
  end
end
