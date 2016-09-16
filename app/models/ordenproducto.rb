class Ordenproducto < ActiveRecord::Base
	has_one :orden
	has_one :producto
	belongs_to :orden
	belongs_to :producto
end
