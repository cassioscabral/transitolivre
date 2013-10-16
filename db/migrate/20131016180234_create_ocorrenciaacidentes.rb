class CreateOcorrenciaacidentes < ActiveRecord::Migration
  def change
    create_table :ocorrenciaacidentes do |t|
      t.integer :oacocoid
      t.integer :oacttacodigo
      t.integer :oactcacodigo
      t.string :oacdano
      t.string :oacdanoterc
      t.string :oacdanoamb
      t.string :oaclatitude
      t.string :oaclongitude
      t.string :oacrefera
      t.string :oacreferb
      t.decimal :oacdistab
      t.decimal :oacdistac
      t.decimal :oacdistbc
      t.string :oacmodelopista
      t.string :oacsentido1
      t.string :oacsentido2
      t.integer :oacqtdfaixa1
      t.integer :oacqtdfaixa2
      t.string :oacacostamento1
      t.string :oacacostamento2
      t.integer :oacimagemlen
      t.integer :oacimagem
      t.string :oacdescdanopat
      t.string :oacdescdanoterc
      t.string :oacdescdanoamb
      t.string :oaccanteiro
      t.integer :oaccanteiro
      t.string :oacorientpista
      t.string :oacgirafundo
      t.string :oacversaocroqui
      t.integer :oacsitio

      t.timestamps
    end
  end
end
