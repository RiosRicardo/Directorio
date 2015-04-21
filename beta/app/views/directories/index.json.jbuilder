json.array!(@directories) do |directory|
  json.extract! directory, :id, :usuario_rut, :nombre, :descripcion, :telefono, :celular, :comuna, :ciudad
  json.url directory_url(directory, format: :json)
end
