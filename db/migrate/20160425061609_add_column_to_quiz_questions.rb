class AddColumnToQuizQuestions < ActiveRecord::Migration
  def change
    add_column :quiz_questions, :question, :string
  end
end
