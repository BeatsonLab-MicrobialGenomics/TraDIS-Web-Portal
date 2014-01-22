class AddStrainToMynewdata < ActiveRecord::Migration
  def change
    add_column :mynewdata, :strain, :string
  end
end
