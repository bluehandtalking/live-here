class DropMove < ActiveRecord::Migration
  def change
    drop_table :moves
  end
end
