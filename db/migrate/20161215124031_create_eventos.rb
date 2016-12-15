class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.text :titulo
      t.text :link
      t.text :texto

      t.timestamps null: false
    end
  end
end
