class AddOcodatafimToOcorrencias < ActiveRecord::Migration
  def change
    add_column :ocorrencias, :ocodatafim, :datetime
  end
end
