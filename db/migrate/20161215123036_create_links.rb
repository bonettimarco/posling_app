class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.text :link
      t.text :texto

      t.timestamps null: false
    end
  end
end
