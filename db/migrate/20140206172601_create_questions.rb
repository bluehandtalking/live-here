class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :description
      t.belongs_to :topic, index: true

      t.timestamps
    end
  end
end
