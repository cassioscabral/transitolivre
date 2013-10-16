json.array!(@unidadeoperacionais) do |unidadeoperacional|
  json.extract! unidadeoperacional, :uniid, :uniunidade, :unilotacao, :unisigla, :unittucodigo, :uniunidaderesponsavel, :unidenominacao, :unimunicipio, :unilocal, :unilatitude, :unilongitude, :unihelicoptero
  json.url unidadeoperacional_url(unidadeoperacional, format: :json)
end
