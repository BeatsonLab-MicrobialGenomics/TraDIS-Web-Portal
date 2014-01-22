class CreateMynewdata < ActiveRecord::Migration
  def change
    create_table :mynewdata do |t|
      t.string :contenta
      t.string :contentb
      t.integer :user_id

      t.timestamps
    end
    add_index :mynewdata, [:user_id, :created_at]
  end
end
