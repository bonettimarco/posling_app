class CreateProcessoSeletivos < ActiveRecord::Migration
  def change
    create_table :processo_seletivos do |t|
      t.text :cabecalho
      t.text :mestrado
      t.text :texto1
      t.text :doutorado
      t.text :texto2

      t.timestamps null: false
    end
  end
end
