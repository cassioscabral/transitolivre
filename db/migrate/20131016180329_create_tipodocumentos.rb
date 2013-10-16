class CreateTipodocumentos < ActiveRecord::Migration
  def change
    create_table :tipodocumentos do |t|
      t.integer :ttocodigo
      t.text :ttodescricao
      t.string :ttoatualiza
      t.string :ttorelapreensao
      t.string :ttorelrecuperacao

      t.timestamps
    end
  end
end
