class CreateExperimentData < ActiveRecord::Migration
  def change
    create_table :experiment_data do |t|
      t.string :sys_id
      t.float :logFC
      t.float :logCPM
      t.float :Pval
      t.float :FDR
      t.string :name
      t.float :AA
      t.string :sim
      t.string :prod
      t.integer :exp
      t.integer :user_id

      t.timestamps
    end
  end
end
