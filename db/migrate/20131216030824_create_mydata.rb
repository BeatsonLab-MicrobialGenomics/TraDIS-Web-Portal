class CreateMydata < ActiveRecord::Migration
  def change
    create_table :mydata do |t|
      t.string :datapoint
      t.integer :user_id

      t.timestamps
    end
    add_index :mydata ,[:user_id, :created_at]
  end
end
