class CandidateIssue < ActiveRecord::Base
  belongs_to :party_candidate
  belongs_to :issue
end
