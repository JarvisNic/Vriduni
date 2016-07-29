json.array!(@convenios) do |convenio|
  json.extract! convenio, :id, :nombre, :objetivo, :responsable, :area, :pdf, :categoria, :fecha_inicio, :fecha_fin, :fecha_firma
  json.url convenio_url(convenio, format: :json)
end
