class Vehiculo < ActiveRecord::Base
	has_one :repartidor
	belongs_to :repartidor
end
