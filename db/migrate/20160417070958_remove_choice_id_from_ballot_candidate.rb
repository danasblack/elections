class RemoveChoiceIdFromBallotCandidate < ActiveRecord::Migration
  def change
    remove_column :ballot_candidates, :choice_id, :integer
  end
end
