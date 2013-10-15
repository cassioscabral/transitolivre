class AddOcoidToOcorrencias < ActiveRecord::Migration
  def change
    add_column :ocorrencias, :ocoid, :integer
  end
end
