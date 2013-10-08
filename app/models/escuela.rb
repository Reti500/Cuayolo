class Escuela < ActiveRecord::Base
	has_many :asignarEscuelas
	has_many :users, through: :asignarEscuelas
end
