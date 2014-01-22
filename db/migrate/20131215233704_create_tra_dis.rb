class CreateTraDis < ActiveRecord::Migration
  def change
    create_table :tra_dis do |t|
      t.string :db_id
      t.string :sys_id
      t.string :gene_name
      t.integer :start
      t.integer :end
      t.integer :length
      t.float :logFC
      t.float :logCPM
      t.float :p_val
      t.float :FDR
      t.string :mg1655
      t.string :AA
      t.string :prod

      t.timestamps
    end
  end
end
