class Cliente < ActiveRecord::Base
	has_one :organizacion
	belongs_to :organizacion

	has_many :pagos
	has_many :ordens
end
