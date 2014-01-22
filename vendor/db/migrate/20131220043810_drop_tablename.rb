class DropTablename < ActiveRecord::Migration
  def up
    drop_table :tra_dis
    drop_table :tra_dis_2s
    drop_table :mydata
  end
end  