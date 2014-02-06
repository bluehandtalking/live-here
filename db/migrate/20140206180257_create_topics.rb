class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.text :description
      t.belongs_to :survey, index: true

      t.timestamps
    end
  end
end
