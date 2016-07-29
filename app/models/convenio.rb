class Convenio < ActiveRecord::Base
	def self.search(search)
		if search.present?
			where(["nombre LIKE ?" ,"%#{search}%"])	
		else
			all
		end
	end
end
