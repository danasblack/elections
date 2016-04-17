class BallotCandidate < ActiveRecord::Base
  belongs_to :users
  belongs_to :partycandidates
  belongs_to :ballots
end
