class CreateDisciplinas2s < ActiveRecord::Migration
  def change
    create_table :disciplinas2s do |t|
      t.string :texto

      t.timestamps null: false
    end
  end
end
