json.array!(@tipoapreensoes) do |tipoapreensao|
  json.extract! tipoapreensao, :ttpcodigo, :ttpatualiza
  json.url tipoapreensao_url(tipoapreensao, format: :json)
end
