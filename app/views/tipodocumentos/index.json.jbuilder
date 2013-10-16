json.array!(@tipodocumentos) do |tipodocumento|
  json.extract! tipodocumento, :ttocodigo, :ttodescricao, :ttoatualiza, :ttorelapreensao, :ttorelrecuperacao
  json.url tipodocumento_url(tipodocumento, format: :json)
end
