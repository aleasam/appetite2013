class AddImageToRestaurantes < ActiveRecord::Migration
  def change
    add_column :restaurantes, :image, :string
  end
end
