json.array!(@tipoveiculos) do |tipoveiculo|
  json.extract! tipoveiculo, :tvvcodigo, :tvvatualiza, :tvvativo
  json.url tipoveiculo_url(tipoveiculo, format: :json)
end
