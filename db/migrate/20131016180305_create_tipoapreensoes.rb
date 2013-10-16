class CreateTipoapreensoes < ActiveRecord::Migration
  def change
    create_table :tipoapreensoes do |t|
      t.integer :ttpcodigo
      t.string :ttpatualiza

      t.timestamps
    end
  end
end
