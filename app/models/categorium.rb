class Categorium < ActiveRecord::Base
  attr_accessible :nombre
  has_many :productos
end
