class Ballot < ActiveRecord::Base
  belongs_to :user

  has_many :ballot_candidates
  has_many :party_candidates, through: :ballot_candidates
end
