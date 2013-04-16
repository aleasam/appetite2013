class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :comentarios
      t.integer :id_producto
      t.integer :id_usuario
      t.date :fecha

      t.timestamps
    end
  end
end
