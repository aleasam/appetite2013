class CreateOfreces < ActiveRecord::Migration
  def change
    create_table :ofreces do |t|
      t.integer :id_restaurante
      t.integer :id_producto

      t.timestamps
    end
  end
end
