class Directory < ActiveRecord::Base
	validates :usuario_rut, length: { in: 8..12 , message: "debe tener entre 8 y 12 caracteres"}
	validates :nombre, :presence => {:message => "Usted debe ingresar un nombre"}
 	validates :descripcion, :presence => {:message => "Usted debe ingresar una descripcion"}
 	validates :telefono, numericality: { only_integer: true }
 	validates :celular, numericality: { only_integer: true }
 	validates :comuna, :presence => {:message => "Usted debe ingresar una comuna"}
 	validates :ciudad, :presence => {:message => "Usted debe ingresar una ciudad"}
end
