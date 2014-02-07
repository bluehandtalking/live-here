class AddPicToCity < ActiveRecord::Migration
  def change
    add_column :cities, :image, :binary
  end
end
