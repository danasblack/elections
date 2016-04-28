class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question1
      t.string :question2
      t.string :question3
      t.string :question4

      t.timestamps null: false
    end
  end
end
