class ChangeDataTypeInCity < ActiveRecord::Migration
  def self.up
     change_column :cities, :rating, :string
  end

  def self.down
   change_column :cities, :rating, :integer
  end
end
