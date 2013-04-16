class Ciudade < ActiveRecord::Base
  attr_accessible :nombre
  has_many :usuarios
  has_many :punto_de_venta
end
