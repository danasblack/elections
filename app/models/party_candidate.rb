class PartyCandidate < ActiveRecord::Base
  has_many :users
  has_many :party_candidates
  has_many :ballot_candidates
end
