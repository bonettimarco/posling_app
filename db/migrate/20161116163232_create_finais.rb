class CreateFinais < ActiveRecord::Migration
  def change
    create_table :finais do |t|
      t.string :texto

      t.timestamps null: false
    end
  end
end
