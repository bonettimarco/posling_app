class CreateGrupos < ActiveRecord::Migration
  def change
    create_table :grupos do |t|
      t.string :texto

      t.timestamps null: false
    end
  end
end
