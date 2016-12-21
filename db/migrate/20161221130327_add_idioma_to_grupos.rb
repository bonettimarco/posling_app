class AddIdiomaToGrupos < ActiveRecord::Migration
  def change
    add_column :grupos, :idioma, :integer
  end
end
