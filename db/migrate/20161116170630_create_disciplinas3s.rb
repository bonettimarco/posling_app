class CreateDisciplinas3s < ActiveRecord::Migration
  def change
    create_table :disciplinas3s do |t|
      t.string :texto

      t.timestamps null: false
    end
  end
end
