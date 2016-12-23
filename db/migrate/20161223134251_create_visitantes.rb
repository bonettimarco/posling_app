class CreateVisitantes < ActiveRecord::Migration
  def change
    create_table :visitantes do |t|
      t.integer :idioma

      t.timestamps null: false
    end
  end
end
