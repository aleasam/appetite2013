class CreatePuntoDeVenta < ActiveRecord::Migration
  def change
    create_table :punto_de_venta do |t|
      t.integer :id_restaurante
      t.string :telefono
      t.string :direccion
      t.float :latitud
      t.float :longitud
      t.integer :id_ciudade

      t.timestamps
    end
  end
end
