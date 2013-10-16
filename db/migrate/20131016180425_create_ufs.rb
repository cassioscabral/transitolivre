class CreateUfs < ActiveRecord::Migration
  def change
    create_table :ufs do |t|
      t.string :tufuf
      t.text :tufdenominacao

      t.timestamps
    end
  end
end
