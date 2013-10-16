class CreateTipoareaespeciais < ActiveRecord::Migration
  def change
    create_table :tipoareaespeciais do |t|
      t.integer :taecodigo
      t.text :taedescricao
      t.string :taeatualiza

      t.timestamps
    end
  end
end
