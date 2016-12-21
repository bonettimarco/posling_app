class AddIdiomaToProcessoSeletivos < ActiveRecord::Migration
  def change
    add_column :processo_seletivos, :idioma, :integer
  end
end
