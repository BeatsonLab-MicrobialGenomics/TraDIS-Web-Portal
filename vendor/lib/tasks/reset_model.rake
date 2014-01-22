namespace :db do
  desc "Sequentially clears out model"
  task :reset_model => :environment do
    puts "Clearing out the ExperimentDatum model"
    ExperimentDatum.destroy_all
    puts "Finished."
  end
end