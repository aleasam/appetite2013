class PuntoDeVentum < ActiveRecord::Base
  attr_accessible :direccion, :id_restaurante, :latitud, :longitud, :telefono, :id_ciudade
  belong_to :ciudade
  belong_to :restaurante
  has_many :publicidads
end
