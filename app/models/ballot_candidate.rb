class BallotCandidate < ActiveRecord::Base
  belongs_to :user
  belongs_to :party_candidate
  belongs_to :ballot
end
