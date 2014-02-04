class AddQuestionToQuestionSet < ActiveRecord::Migration
  def change
    add_column :question_sets, :question, :string
  end
end
