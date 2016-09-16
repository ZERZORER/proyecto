class Sucursal < ActiveRecord::Base
	has_one :organizacion
	belongs_to :organizacion

	has_many :repartidors
	has_many :bases
	has_many :gerentes
end
