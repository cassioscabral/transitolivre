json.array!(@ufs) do |uf|
  json.extract! uf, :tufuf, :tufdenominacao
  json.url uf_url(uf, format: :json)
end
