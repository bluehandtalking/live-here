class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer
      t.belongs_to :question_set, index: true

      t.timestamps
    end
  end
end
