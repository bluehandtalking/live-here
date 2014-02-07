class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :surveys, :topic, :name 
  end
end
