class AddIdiomaToLinhas < ActiveRecord::Migration
  def change
    add_column :linhas, :idioma, :integer
  end
end
