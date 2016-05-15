class CreateCandidateIssues < ActiveRecord::Migration
  def change
    create_table :candidate_issues do |t|
      t.string :candidate_id
      t.string :issue_id
      t.string :value

      t.timestamps null: false
    end
  end
end
