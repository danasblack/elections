class AddBallotIdToBallotCandidate < ActiveRecord::Migration
  def change
    add_column :ballot_candidates, :ballot_id, :integer
  end
end
