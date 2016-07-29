class User < ActiveRecord::Base
  has_secure_password
  validates :email,  uniqueness: {case_sensitive: false ,message: "este correo ya esta registrado"}, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,  on: :create, :message => "Ingrese un correo valido"}
end
