class Ordenverificado < ActiveRecord::Base
	has_one :base
	has_one :pago
	belongs_to :base
	belongs_to :pago
end
