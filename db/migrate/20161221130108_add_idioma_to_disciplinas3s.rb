class AddIdiomaToDisciplinas3s < ActiveRecord::Migration
  def change
    add_column :disciplinas3s, :idioma, :integer
  end
end
