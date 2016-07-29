class Proyecto < ActiveRecord::Base
	has_many :students
	def self.search(search)
		if search	
			where(["nombre LIKE ?" ,"%#{search}%"])	
		else
			all
		end
	end
#validates :nombre, :presence => {:message => "no puede estar vacio"}, length: {minimum: 6, maximum: 50, :message => " debe tener entre 6 y 50 caracteres"}
#validates :tutor, length: {minimum: 3, maximum: 50, :message => " debe tener entre 3 y 50 caracteres"}
#validates :objetivo, :presence => {:message => "no puede estar vacio"}, length: {minimum: 20, maximum: 2000, :message => " tener entre 20 y 2000 caracteres"}
#validates :desarrollador, :presence => {:message => "no puede estar vacio"}, length: {minimum: 6, maximum: 50, :message => " debe tener entre 6 y 50 caracteres"}
#validates :facultad, :presence => {:message => "no puede estar vacio"}, length: {minimum: 3, maximum: 10, :message => " debe tener entre 3 y 10 caracteres"}
#validates :categoria, :presence => {:message => "no puede estar vacio"}, length: {minimum: 6, maximum: 50, :message => " debe tener entre 6 y 50 caracteres"}
#validates :area, :presence => {:message => "no puede estar vacio"}, length: {minimum: 6, maximum: 50, :message => " debe tener entre 6 y 50 caracteres"}
#validates :responsable, :presence => {:message => "no puede estar vacio"}, length: {minimum: 6, maximum: 50, :message => " debe tener entre 6 y 50 caracteres"}
end
