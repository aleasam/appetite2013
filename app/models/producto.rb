class Producto < ActiveRecord::Base
  attr_accessible :categorium_id, :restaurante_id, :image, :nombre, :precio
  mount_uploader :image, ImageUploader
  belongs_to :categorium
  belongs_to :restaurante
  has_many :comentarios
end
