class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :topic

      t.timestamps
    end
  end
end
