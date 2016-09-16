class Gerente < ActiveRecord::Base
	has_one :sucursal
	belongs_to :sucursal
end
