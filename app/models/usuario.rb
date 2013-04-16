class Usuario < ActiveRecord::Base
  attr_accessible :correo, :ciudad, :nombre_completo, :nombre_usuario, :password, :twitter
  validates :correo, :uniqueness => true
 
  has_many :comentarios
end
