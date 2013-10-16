class CreateTipoenvolvidos < ActiveRecord::Migration
  def change
    create_table :tipoenvolvidos do |t|
      t.integer :ttecodigo
      t.string :tteatualiza
      t.string :tteativo

      t.timestamps
    end
  end
end
