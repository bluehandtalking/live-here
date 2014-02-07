class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.integer :weather
      t.integer :budget
      t.integer :safety
      t.integer :recreation

      t.timestamps
    end
  end
end
