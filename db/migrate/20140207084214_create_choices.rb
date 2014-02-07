class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.belongs_to :move, index: true
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
