class Repartidor < ActiveRecord::Base
	has_one :vehiculo
	has_one :sucursal

	belongs_to :sucursal
end
