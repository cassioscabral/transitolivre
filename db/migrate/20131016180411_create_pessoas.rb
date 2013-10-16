class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.integer :pesid
      t.string :pesufexpedidora
      t.string :pesnaturalidade
      t.integer :pesnacionalidade
      t.string :pessexo
      t.integer :pestgicodigo
      t.integer :pestopcodigo
      t.string :pesmunicipioori
      t.integer :pespaisori
      t.string :pesmunicipiodest
      t.integer :pesveiid
      t.string :pescinto
      t.string :pescapacete
      t.string :peshabilitado
      t.string :pessocorrido
      t.string :pesdormindo
      t.string :pesalcool
      t.decimal :peskmpercorre
      t.string :peshorapercorre
      t.string :pescategcnh
      t.date :pesdatahabil
      t.date :pesdatavalidade
      t.string :pesapelido
      t.integer :pesidade
      t.decimal :pesaltura
      t.integer :pespeso
      t.string :pescicatriz
      t.string :pestatuagem
      t.string :pessinal
      t.string :peslesao
      t.integer :pestcccodigo
      t.integer :pestctcodigo
      t.integer :pestctcodigo
      t.text :pespertences
      t.text :pesdadoscomplement
      t.integer :pesoenid
      t.string :vestigios_drogas
      t.text :descricao_cicatriz
      t.text :descricao_sinal
      t.text :descricao_deficiencia

      t.timestamps
    end
  end
end
