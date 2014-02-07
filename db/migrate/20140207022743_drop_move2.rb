class DropMove2 < ActiveRecord::Migration
  def change
    drop_table :moves
  end
end
