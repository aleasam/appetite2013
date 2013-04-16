class Publicidad < ActiveRecord::Base
  attr_accessible  :image, :id_punto_de_ventum
  mount_uploader :image, ImageUploader
  belong_to :punto_de_ventum
end





