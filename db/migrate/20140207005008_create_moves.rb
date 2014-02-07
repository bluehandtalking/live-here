class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.integer :title
      t.integer :moderate
      t.integer :hot
      t.integer :cold
      t.integer :bunny
      t.integer :cautious
      t.integer :badass
      t.integer :poor
      t.integer :solid
      t.integer :bling
      t.integer :hike
      t.integer :theater
      t.integer :lecture

      t.timestamps
    end
  end
end
