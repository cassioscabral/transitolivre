json.array!(@tipoenvolvidos) do |tipoenvolvido|
  json.extract! tipoenvolvido, :ttecodigo, :tteatualiza, :tteativo
  json.url tipoenvolvido_url(tipoenvolvido, format: :json)
end
