class Restaurante < ActiveRecord::Base
  attr_accessible :celular, :image, :nombre, :nombre_representante, :tel_representante, :password, :correo
  validates :correo, :uniqueness => true
  mount_uploader :image, ImageUploader
  has_many :punto_de_venta
  has_many :productos
end
