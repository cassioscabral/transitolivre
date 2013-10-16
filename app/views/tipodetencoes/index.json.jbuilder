json.array!(@tipodetencoes) do |tipodetencao|
  json.extract! tipodetencao, :ttdcodigo, :ttddescricao, :ttdatualiza, :ttdrelacidente
  json.url tipodetencao_url(tipodetencao, format: :json)
end
