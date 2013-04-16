class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :precio
      t.string :imagen
      t.integer :categoria_id
      t.integer :restaurante_id

      t.timestamps
    end
  end
end
