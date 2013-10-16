class CreateLocalbrs < ActiveRecord::Migration
  def change
    create_table :localbrs do |t|
      t.integer :lbrid
      t.string :lbruf
      t.string :lbrbr
      t.string :lbrkm
      t.string :lbrlatitude
      t.string :lbrlatitude
      t.string :lbrpnvid
      t.string :lbratualiza

      t.timestamps
    end
  end
end
