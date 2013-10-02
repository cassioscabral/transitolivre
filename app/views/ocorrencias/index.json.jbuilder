json.array!(@ocorrencias) do |ocorrencia|
  json.extract! ocorrencia, :ocolocal, :ocostatus, :ocomunicipio, :ocosentido, :ocodataocorrencia, :ocodataregistro, :ocotipo, :ococomid, :ocoidorigem, :ococpfretif, :ococpfretif
  json.url ocorrencia_url(ocorrencia, format: :json)
end
