class CreateDocentes < ActiveRecord::Migration
  def change
    create_table :docentes do |t|
      t.text :nome
      t.integer :linha
      t.text :link

      t.timestamps null: false
    end
  end
end
