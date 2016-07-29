class Student < ActiveRecord::Base
	belongs_to :proyecto

	validates :name, :presence => {:message => "no puede estar vacio"}, length: {minimum: 6, maximum: 200, :message => " debe tener entre 6 y 200 caracteres"}
	validates :email, :presence => {message:"No debe estar vacio"},uniqueness: {case_sensitive: false ,message: "este correo ya esta registrado"}, format: { with: /\A[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@uni.edu.ni+$\z/, on: :create, :message => "Ingrese un correo valido"}
	validates :tel, uniqueness: {case_sensitive: false , message: "este numero ya esta en la base de datos"}, :presence => {message:"No debe estar vacío"},  format: { with: /\A[0-9]{4}-[0-9]{4}\z/, on: :create, :message => "Ingrese un numero valido"}
	validates :cel, uniqueness: {case_sensitive: false , message: "este numero telefonico ya existe"}, :presence => {message:"No debe estar vacío"},  format: { with: /\A[0-9]{4}-[0-9]{4}\z/, on: :create, :message => "Ingrese un numero valido"}

end
	