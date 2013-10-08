class AsignarEscuela < ActiveRecord::Base
	belongs_to :user
	belongs_to :escuela
end
