class CreateTipounidadeoperacionais < ActiveRecord::Migration
  def change
    create_table :tipounidadeoperacionais do |t|
      t.integer :ttucodigo
      t.text :ttudescricao
      t.string :ttuatualiza

      t.timestamps
    end
  end
end
