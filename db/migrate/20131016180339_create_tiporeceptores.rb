class CreateTiporeceptores < ActiveRecord::Migration
  def change
    create_table :tiporeceptores do |t|
      t.integer :ttrcodigo
      t.text :ttrdescricao
      t.string :ttratualiza
      t.string :ttrdelegacia

      t.timestamps
    end
  end
end
