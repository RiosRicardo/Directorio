class Usuario < ActiveRecord::Base
	validates :rut, length: { in: 8..12 , message: "debe tener entre 8 y 12 caracteres"}
	validates :rut, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
	validates :nombre, :presence => {:message => "Usted debe ingresar un nombre"}
 	validates :apellidos, :presence => {:message => "Usted debe ingresar un apellido"}
 	validates :email, :presence => {:message => "Usted debe ingresar un email"}
 	validates :email, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
 	validates :username, :presence => {:message => "Usted debe ingresar un username"}
 	validates :username, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
 	validates :password, :presence => {:message => "Usted debe ingresar un password"}
 	#has_secure_password
end
