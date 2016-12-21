class AddIdiomaToDisciplinas2s < ActiveRecord::Migration
  def change
    add_column :disciplinas2s, :idioma, :integer
  end
end
