class LocalCandidate < ActiveRecord::Base
  has_many :users
  has_many :ballot_candidates
  has_many :ballots, through: :ballot_candidates
end
