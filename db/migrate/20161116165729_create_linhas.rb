class CreateLinhas < ActiveRecord::Migration
  def change
    create_table :linhas do |t|
      t.string :texto

      t.timestamps null: false
    end
  end
end
