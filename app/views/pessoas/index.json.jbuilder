json.array!(@pessoas) do |pessoa|
  json.extract! pessoa, :pesid, :pesufexpedidora, :pesnaturalidade, :pesnacionalidade, :pessexo, :pestgicodigo, :pestopcodigo, :pesmunicipioori, :pespaisori, :pesmunicipiodest, :pesveiid, :pescinto, :pescapacete, :peshabilitado, :pessocorrido, :pesdormindo, :pesalcool, :peskmpercorre, :peshorapercorre, :pescategcnh, :pesdatahabil, :pesdatavalidade, :pesapelido, :pesidade, :pesaltura, :pespeso, :pescicatriz, :pestatuagem, :pessinal, :peslesao, :pestcccodigo, :pestctcodigo, :pestctcodigo, :pespertences, :pesdadoscomplement, :pesoenid, :vestigios_drogas, :descricao_cicatriz, :descricao_sinal, :descricao_deficiencia
  json.url pessoa_url(pessoa, format: :json)
end
