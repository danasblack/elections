class CreateBallotCandidates < ActiveRecord::Migration
  def change
    create_table :ballot_candidates do |t|
      t.integer :party_candidate_id
      t.integer :user_id
      t.integer :choice_id

      t.timestamps null: false
    end
  end
end
