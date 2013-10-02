class CreateOcorrencias < ActiveRecord::Migration
  def change
    create_table :ocorrencias do |t|
      t.integer :ocolocal
      t.string :ocostatus
      t.string :ocomunicipio
      t.string :ocosentido
      t.date :ocodataocorrencia
      t.date :ocodataregistro
      t.string :ocotipo
      t.integer :ococomid
      t.integer :ocoidorigem
      t.string :ococpfretif
      t.date :ococpfretif

      t.timestamps
    end
  end
end
