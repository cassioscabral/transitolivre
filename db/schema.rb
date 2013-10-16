# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131016180425) do

  create_table "localbrs", force: true do |t|
    t.integer  "lbrid"
    t.string   "lbruf"
    t.string   "lbrbr"
    t.string   "lbrkm"
    t.string   "lbrlatitude"
    t.string   "lbrpnvid"
    t.string   "lbratualiza"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ocorrenciaacidentes", force: true do |t|
    t.integer  "oacocoid"
    t.integer  "oacttacodigo"
    t.integer  "oactcacodigo"
    t.string   "oacdano"
    t.string   "oacdanoterc"
    t.string   "oacdanoamb"
    t.string   "oaclatitude"
    t.string   "oaclongitude"
    t.string   "oacrefera"
    t.string   "oacreferb"
    t.decimal  "oacdistab"
    t.decimal  "oacdistac"
    t.decimal  "oacdistbc"
    t.string   "oacmodelopista"
    t.string   "oacsentido1"
    t.string   "oacsentido2"
    t.integer  "oacqtdfaixa1"
    t.integer  "oacqtdfaixa2"
    t.string   "oacacostamento1"
    t.string   "oacacostamento2"
    t.integer  "oacimagemlen"
    t.integer  "oacimagem"
    t.string   "oacdescdanopat"
    t.string   "oacdescdanoterc"
    t.string   "oacdescdanoamb"
    t.integer  "oaccanteiro"
    t.string   "oacorientpista"
    t.string   "oacgirafundo"
    t.string   "oacversaocroqui"
    t.integer  "oacsitio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ocorrencias", force: true do |t|
    t.integer  "ocolocal"
    t.string   "ocostatus"
    t.string   "ocomunicipio"
    t.string   "ocosentido"
    t.date     "ocodataocorrencia"
    t.date     "ocodataregistro"
    t.string   "ocotipo"
    t.integer  "ococomid"
    t.integer  "ocoidorigem"
    t.date     "ococpfretif"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ocoid"
  end

  create_table "ocorrenciaveiculos", force: true do |t|
    t.integer  "ocvid"
    t.integer  "ocvocoid"
    t.integer  "ocvveiid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pessoas", force: true do |t|
    t.integer  "pesid"
    t.string   "pesufexpedidora"
    t.string   "pesnaturalidade"
    t.integer  "pesnacionalidade"
    t.string   "pessexo"
    t.integer  "pestgicodigo"
    t.integer  "pestopcodigo"
    t.string   "pesmunicipioori"
    t.integer  "pespaisori"
    t.string   "pesmunicipiodest"
    t.integer  "pesveiid"
    t.string   "pescinto"
    t.string   "pescapacete"
    t.string   "peshabilitado"
    t.string   "pessocorrido"
    t.string   "pesdormindo"
    t.string   "pesalcool"
    t.decimal  "peskmpercorre"
    t.string   "peshorapercorre"
    t.string   "pescategcnh"
    t.date     "pesdatahabil"
    t.date     "pesdatavalidade"
    t.string   "pesapelido"
    t.integer  "pesidade"
    t.decimal  "pesaltura"
    t.integer  "pespeso"
    t.string   "pescicatriz"
    t.string   "pestatuagem"
    t.string   "pessinal"
    t.string   "peslesao"
    t.integer  "pestcccodigo"
    t.integer  "pestctcodigo"
    t.text     "pespertences"
    t.text     "pesdadoscomplement"
    t.integer  "pesoenid"
    t.string   "vestigios_drogas"
    t.text     "descricao_cicatriz"
    t.text     "descricao_sinal"
    t.text     "descricao_deficiencia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_acidentes", force: true do |t|
    t.integer  "ttacodigo"
    t.string   "ttaatualiza"
    t.string   "ttaativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipoapreensoes", force: true do |t|
    t.integer  "ttpcodigo"
    t.string   "ttpatualiza"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipoareaespeciais", force: true do |t|
    t.integer  "taecodigo"
    t.text     "taedescricao"
    t.string   "taeatualiza"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipodetencoes", force: true do |t|
    t.integer  "ttdcodigo"
    t.text     "ttddescricao"
    t.string   "ttdatualiza"
    t.string   "ttdrelacidente"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipodocumentos", force: true do |t|
    t.integer  "ttocodigo"
    t.text     "ttodescricao"
    t.string   "ttoatualiza"
    t.string   "ttorelapreensao"
    t.string   "ttorelrecuperacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipoenvolvidos", force: true do |t|
    t.integer  "ttecodigo"
    t.string   "tteatualiza"
    t.string   "tteativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tiporeceptores", force: true do |t|
    t.integer  "ttrcodigo"
    t.text     "ttrdescricao"
    t.string   "ttratualiza"
    t.string   "ttrdelegacia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipounidadeoperacionais", force: true do |t|
    t.integer  "ttucodigo"
    t.text     "ttudescricao"
    t.string   "ttuatualiza"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipoveiculos", force: true do |t|
    t.integer  "tvvcodigo"
    t.string   "tvvatualiza"
    t.string   "tvvativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ufs", force: true do |t|
    t.string   "tufuf"
    t.text     "tufdenominacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unidadeoperacionais", force: true do |t|
    t.integer  "uniid"
    t.string   "uniunidade"
    t.string   "unilotacao"
    t.string   "unisigla"
    t.integer  "unittucodigo"
    t.integer  "uniunidaderesponsavel"
    t.string   "unidenominacao"
    t.string   "unimunicipio"
    t.integer  "unilocal"
    t.string   "unilatitude"
    t.string   "unilongitude"
    t.string   "unihelicoptero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
