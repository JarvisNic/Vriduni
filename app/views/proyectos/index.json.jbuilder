json.array!(@proyectos) do |proyecto|
  json.extract! proyecto, :id, :nombre, :tutor, :objetivo, :desarrollador, :facultad, :categoria, :area, :responsable
  json.url proyecto_url(proyecto, format: :json)
end
