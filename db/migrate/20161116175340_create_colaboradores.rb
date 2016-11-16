class CreateColaboradores < ActiveRecord::Migration
  def change
    create_table :colaboradores do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
