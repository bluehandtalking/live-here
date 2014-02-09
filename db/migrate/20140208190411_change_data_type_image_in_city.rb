class ChangeDataTypeImageInCity < ActiveRecord::Migration
  def change
    change_column  :cities, :image, :string
  end
end
