class AddIdiomaToDisciplinas < ActiveRecord::Migration
  def change
    add_column :disciplinas, :idioma, :integer
  end
end
