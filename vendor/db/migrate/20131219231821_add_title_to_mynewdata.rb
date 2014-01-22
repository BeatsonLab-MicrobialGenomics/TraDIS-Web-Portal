class AddTitleToMynewdata < ActiveRecord::Migration
  def change
    add_column :mynewdata, :title, :string
    add_column :mynewdata, :descrip, :string
    add_column :mynewdata, :Genus, :string
    add_column :mynewdata, :Species, :string
    add_column :mynewdata, :ref, :string
  end
end
