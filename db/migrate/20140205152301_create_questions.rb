class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :query
      t.belongs_to :topic, index: true

      t.timestamps
    end
  end
end
