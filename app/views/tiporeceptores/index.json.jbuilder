json.array!(@tiporeceptores) do |tiporeceptor|
  json.extract! tiporeceptor, :ttrcodigo, :ttrdescricao, :ttratualiza, :ttrdelegacia
  json.url tiporeceptor_url(tiporeceptor, format: :json)
end
