class PuntoDeVentum < ActiveRecord::Base
  attr_accessible :direccion, :id_restaurante, :latitud, :longitud, :telefono, :id_ciudade
  belongs_to :ciudade
  belongs_to :restaurante
  has_many :publicidads
end
