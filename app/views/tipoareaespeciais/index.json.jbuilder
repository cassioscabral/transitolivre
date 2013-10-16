json.array!(@tipoareaespeciais) do |tipoareaespecial|
  json.extract! tipoareaespecial, :taecodigo, :taedescricao, :taeatualiza
  json.url tipoareaespecial_url(tipoareaespecial, format: :json)
end
