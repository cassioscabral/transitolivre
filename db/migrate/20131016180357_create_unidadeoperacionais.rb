class CreateUnidadeoperacionais < ActiveRecord::Migration
  def change
    create_table :unidadeoperacionais do |t|
      t.integer :uniid
      t.string :uniunidade
      t.string :unilotacao
      t.string :unisigla
      t.integer :unittucodigo
      t.integer :uniunidaderesponsavel
      t.string :unidenominacao
      t.string :unimunicipio
      t.integer :unilocal
      t.string :unilatitude
      t.string :unilongitude
      t.string :unihelicoptero

      t.timestamps
    end
  end
end
