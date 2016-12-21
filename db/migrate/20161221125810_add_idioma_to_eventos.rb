class AddIdiomaToEventos < ActiveRecord::Migration
  def change
    add_column :eventos, :idioma, :integer
  end
end
