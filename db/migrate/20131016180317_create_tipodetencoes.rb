class CreateTipodetencoes < ActiveRecord::Migration
  def change
    create_table :tipodetencoes do |t|
      t.integer :ttdcodigo
      t.text :ttddescricao
      t.string :ttdatualiza
      t.string :ttdrelacidente

      t.timestamps
    end
  end
end
