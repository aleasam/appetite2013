class AddImageToPublicidads < ActiveRecord::Migration
  def change
    add_column :publicidads, :image, :string
  end
end
