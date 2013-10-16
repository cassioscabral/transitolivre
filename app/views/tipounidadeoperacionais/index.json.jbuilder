json.array!(@tipounidadeoperacionais) do |tipounidadeoperacional|
  json.extract! tipounidadeoperacional, :ttucodigo, :ttudescricao, :ttuatualiza
  json.url tipounidadeoperacional_url(tipounidadeoperacional, format: :json)
end
