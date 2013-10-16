json.array!(@localbrs) do |localbr|
  json.extract! localbr, :lbrid, :lbruf, :lbrbr, :lbrkm, :lbrlatitude, :lbrlatitude, :lbrpnvid, :lbratualiza
  json.url localbr_url(localbr, format: :json)
end
