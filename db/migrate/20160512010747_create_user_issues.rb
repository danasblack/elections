class CreateUserIssues < ActiveRecord::Migration
  def change
    create_table :user_issues do |t|
      t.string :user_id
      t.string :issue_id
      t.string :value

      t.timestamps null: false
    end
  end
end
