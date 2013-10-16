# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
ActiveSupport::Inflector.inflections(:en) do |inflect|
	inflect.irregular 'ocorrencia', 'ocorrencias'
	inflect.irregular 'ocorrenciaacidente', 'ocorrenciaacidentes'
	inflect.irregular 'tipo_acidente', 'tipo_acidentes'
	inflect.irregular 'Tipoapreensao', 'Tipoapreensoes'
	inflect.irregular 'Tipoareaespecial', 'Tipoareaespeciais'
	inflect.irregular 'Tipodetencao', 'Tipodetencoes'
	inflect.irregular 'Tipodocumento', 'Tipodocumentos'
	inflect.irregular 'Tipoenvolvido', 'Tipoenvolvidos'
	inflect.irregular 'Tiporeceptor', 'Tiporeceptores'
	inflect.irregular 'Tipounidadeoperacional', 'Tipounidadeoperacionais'
	inflect.irregular 'Tipoveiculo', 'Tipoveiculos'
	inflect.irregular 'Unidadeoperacional', 'Unidadeoperacionais'
	inflect.irregular 'Ocorrenciaveiculo', 'Ocorrenciaveiculos'
	inflect.irregular 'Pessoa', 'Pessoas'
	inflect.irregular 'Localbr', 'Localbrs'
	inflect.irregular 'Uf', 'Ufs'
end