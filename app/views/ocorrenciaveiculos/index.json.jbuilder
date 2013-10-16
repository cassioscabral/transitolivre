json.array!(@ocorrenciaveiculos) do |ocorrenciaveiculo|
  json.extract! ocorrenciaveiculo, :ocvid, :ocvocoid, :ocvveiid
  json.url ocorrenciaveiculo_url(ocorrenciaveiculo, format: :json)
end
