class Organizacion < ActiveRecord::Base
	has_many :sucursals
	has_many :clientes
	has_many :productos
end
