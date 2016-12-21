class AddIdiomaToFinais < ActiveRecord::Migration
  def change
    add_column :finais, :idioma, :integer
  end
end
