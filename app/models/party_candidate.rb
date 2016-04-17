class PartyCandidate < ActiveRecord::Base
  has_many :users
  has_many :partycandidates
  has_many :ballotcandidates
end
