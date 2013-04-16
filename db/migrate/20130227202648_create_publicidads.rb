class CreatePublicidads < ActiveRecord::Migration
  def change
    create_table :publicidads do |t|
      t.string :imagen
      t.integer :id_punto_de_ventum

      t.timestamps
    end
  end
end
