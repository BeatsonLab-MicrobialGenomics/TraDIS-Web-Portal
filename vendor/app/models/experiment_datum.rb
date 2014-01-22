class Experiment_datum< ActiveRecord::Base
	belongs_to :mynewdatum
    
	require 'csv'

    

	def self.import(file, ref, id)
  		CSV.foreach(file.path, headers: true) do |row|
    	record=Experiment_datum.new(
    		:sys_id => row[0],
    		:logFC => row[1],
    		:logCPM => row[2],
    		:Pval => row[3],
    		:FDR => row[4],
    		:name => row[5],
    		:AA => row[6],
    		:sim => row[7],
    		:prod => row[8],
            :exp => ref,
            :user_id => id,
    		:created_at => Time.now,
    		:updated_at => Time.now)
    	record.save
  	end
	end  





end
