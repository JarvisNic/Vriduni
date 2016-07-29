json.array!(@catalogos) do |catalogo|
  json.extract! catalogo, :id, :responsable, :telefono, :fax, :contacto, :descripcion, :objetivos
  json.url catalogo_url(catalogo, format: :json)
end
