json.array!(@ocorrenciaacidentes) do |ocorrenciaacidente|
  json.extract! ocorrenciaacidente, :oacocoid, :oacttacodigo, :oactcacodigo, :oacdano, :oacdanoterc, :oacdanoamb, :oaclatitude, :oaclongitude, :oacrefera, :oacreferb, :oacdistab, :oacdistac, :oacdistbc, :oacmodelopista, :oacsentido1, :oacsentido2, :oacqtdfaixa1, :oacqtdfaixa2, :oacacostamento1, :oacacostamento2, :oacimagemlen, :oacimagem, :oacdescdanopat, :oacdescdanoterc, :oacdescdanoamb, :oaccanteiro, :oaccanteiro, :oacorientpista, :oacgirafundo, :oacversaocroqui, :oacsitio
  json.url ocorrenciaacidente_url(ocorrenciaacidente, format: :json)
end
