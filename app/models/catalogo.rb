class Catalogo < ActiveRecord::Base
	def self.search(search)
		if search
			where(["nombre ILIKE ? or entidad ILIKE ? or informante ILIKE ?" ,"%#{search}%", "%#{search}%", "%#{search}%"])
		else 
			all
		end


	end
	#validates :nombre, :presence => {:message => "no puede estar vacio"}, length: {minimum: 6, maximum: 200, :message => " debe tener entre 6 y 200 caracteres"}
	#validates :mercado, :presence => {:message => "no puede estar vacio"}, length: {minimum: 6, maximum: 500, :message => " debe tener entre 6 y 500 caracteres"}
	#validates :tipo, :presence => {:message => "no puede estar vacio"}, length: {minimum: 1, maximum: 3, :message => " tener entre 1 y 3 caracteres"}
	#validates :infraestructura, :presence => {:message => "no puede estar vacio"}, length: {minimum: 6, maximum: 1000, :message => " debe tener entre 6 y 1000 caracteres"}
	#validates :descripcion, :presence => {:message => "no puede estar vacio"}, length: {minimum: 20, maximum: 2000, :message => " debe tener entre 20 y 2000 caracteres"}
	#validates :resultados, :presence => {:message => "no puede estar vacio"}, length: {minimum: 20, maximum: 2000, :message => " debe tener entre 20 y 2000 caracteres"}
	#validates :informante, :presence => {:message => "no puede estar vacio"}, length: {minimum: 20, maximum: 100, :message => " debe tener entre 20 y 100 caracteres"}
	#validates :entidad, :presence => {:message => "no puede estar vacio"}, length: {minimum: 3, maximum: 100, :message => " debe tener entre 3 y 100 caracteres"}
	#validates :autorizado, :presence => {:message => "no puede estar vacio"}, length: {minimum: 1, maximum: 4, :message => " debe tener entre 1 y 4 caracteres"}
	#format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,:message => " formato incorrecto"}
	belongs_to :tipo
end
