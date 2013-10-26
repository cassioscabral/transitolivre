class Ocorrencia < ActiveRecord::Base
	include Importable

	def self.import(file)
  	  CSV.foreach(file.path, headers: true, :col_sep => ";", :quote_char => "\"") do |row|
  		puts row
	    self.create! row.to_hash
	  end
	end

	
end
