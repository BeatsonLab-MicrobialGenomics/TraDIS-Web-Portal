class CreateTraDis2s < ActiveRecord::Migration
  def change
    create_table :tra_dis_2s do |t|
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
      t.string :user_id

      t.timestamps
    end
    add_index :tra_dis_2s, :user_id
    add_index :tra_dis_2s, :db_id
    add_index :tra_dis_2s, :sys_id
    add_index :tra_dis_2s, :gene_name
    add_index :tra_dis_2s, :length
    add_index :tra_dis_2s, :logFC
    add_index :tra_dis_2s, :logCPM
    add_index :tra_dis_2s, :p_val
    add_index :tra_dis_2s, :FDR
    add_index :tra_dis_2s, :mg1655
    add_index :tra_dis_2s, :AA
    add_index :tra_dis_2s, :prod


  end
end
