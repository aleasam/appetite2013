class Comentario < ActiveRecord::Base
  attr_accessible :comentarios, :fecha, :id_producto, :id_usuario
  
  belongs_to  :producto
  belongs_to  :usuario
end
