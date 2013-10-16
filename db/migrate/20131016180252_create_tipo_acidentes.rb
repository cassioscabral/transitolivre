class CreateTipoAcidentes < ActiveRecord::Migration
  def change
    create_table :tipo_acidentes do |t|
      t.integer :ttacodigo
      t.string :ttaatualiza
      t.string :ttaativo

      t.timestamps
    end
  end
end
