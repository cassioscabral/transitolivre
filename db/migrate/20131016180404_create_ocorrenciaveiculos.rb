class CreateOcorrenciaveiculos < ActiveRecord::Migration
  def change
    create_table :ocorrenciaveiculos do |t|
      t.integer :ocvid
      t.integer :ocvocoid
      t.integer :ocvveiid

      t.timestamps
    end
  end
end
