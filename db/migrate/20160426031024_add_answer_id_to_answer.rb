class AddAnswerIdToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :answer_id, :integer
  end
end
