class CreateRestaurantes < ActiveRecord::Migration
  def change
    create_table :restaurantes do |t|
      t.string :nombre
      t.string :imagen
      t.string :nombre_representante
      t.string :tel_representante
      t.string :celular
      t.string :password
      t.string :correo

      t.timestamps
    end
  end
end
