class AddIdiomaToFinancas < ActiveRecord::Migration
  def change
    add_column :financas, :idioma, :integer
  end
end
