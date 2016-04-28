class AddQuestionIdToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :question_id, :integer
    add_column :questions, :text, :string
    remove_column :questions, :question1, :string
    remove_column :questions, :question2, :string
    remove_column :questions, :question3, :string
    remove_column :questions, :question4, :string
  end
end
