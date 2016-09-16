class Base < ActiveRecord::Base
	has_one :sucursal
	belongs_to :sucursal

	has_many :ordenverificados
end
