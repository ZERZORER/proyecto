class Pago < ActiveRecord::Base
	has_one :ordenverificado
	has_one :cliente
	has_one :orden

	belongs_to :orden
	belongs_to :cliente
end
