class CreateFinancas < ActiveRecord::Migration
  def change
    create_table :financas do |t|
      t.string :cabecalho
      t.string :texto

      t.timestamps null: false
    end
  end
end
