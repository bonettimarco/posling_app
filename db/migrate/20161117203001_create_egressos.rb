class CreateEgressos < ActiveRecord::Migration
  def change
    create_table :egressos do |t|
      t.integer :ano
      t.text :nivel
      t.text :nome
      t.text :lattes
      t.text :orientador
      t.date :defesa

      t.timestamps null: false
    end
  end
end
