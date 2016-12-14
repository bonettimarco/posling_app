class CreateIdiomas < ActiveRecord::Migration
  def change
    create_table :idiomas do |t|
      t.integer :aux

      t.timestamps null: false
    end
  end
end
