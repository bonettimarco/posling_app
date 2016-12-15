class CreatePublicas < ActiveRecord::Migration
  def change
    create_table :publicas do |t|
      t.text :titulo
      t.text :texto

      t.timestamps null: false
    end
  end
end
