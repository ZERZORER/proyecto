class Orden < ActiveRecord::Base
	has_one :pago
	has_one :cliente
	belongs_to :cliente

	has_many :ordenproductos

end
