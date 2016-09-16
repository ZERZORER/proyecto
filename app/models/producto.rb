class Producto < ActiveRecord::Base
	has_many :ordenproductos
	has_one :organizacion

	belongs_to :organizacion
end
