class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre_completo
      t.string :nombre_usuario
      t.string :correo
      t.string :password
      t.string :twitter
      t.string :ciudad
      

      t.timestamps
    end
  end
end
