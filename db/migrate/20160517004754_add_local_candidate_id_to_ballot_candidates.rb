class AddLocalCandidateIdToBallotCandidates < ActiveRecord::Migration
  def change
    add_column :ballot_candidates, :local_candidate_id, :integer
  end
end
