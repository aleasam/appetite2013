class Comentario < ActiveRecord::Base
  attr_accessible :comentarios, :fecha, :id_producto, :id_usuario
  belong_to :producto
  belog_to :usuario
end
