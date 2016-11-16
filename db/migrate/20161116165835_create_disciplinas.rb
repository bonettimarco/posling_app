class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :texto

      t.timestamps null: false
    end
  end
end
