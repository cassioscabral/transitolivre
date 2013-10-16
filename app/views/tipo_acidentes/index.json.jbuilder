json.array!(@tipo_acidentes) do |tipo_acidente|
  json.extract! tipo_acidente, :ttacodigo, :ttaatualiza, :ttaativo
  json.url tipo_acidente_url(tipo_acidente, format: :json)
end
