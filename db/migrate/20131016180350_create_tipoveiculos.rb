class CreateTipoveiculos < ActiveRecord::Migration
  def change
    create_table :tipoveiculos do |t|
      t.integer :tvvcodigo
      t.string :tvvatualiza
      t.string :tvvativo

      t.timestamps
    end
  end
end
