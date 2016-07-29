class Tipo < ActiveRecord::Base
	def self.search(search)
		if search	
			where(["id == ?" ,"#{search}"])	
		else
			all
		end
	end
	has_one :catalogo
end
