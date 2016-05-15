class Issue < ActiveRecord::Base
  has_many :candidate_issues
  has_many :user_issues
  has_many :party_candidates, through: :candidate_issues
  has_many :users, through: :user_issues

  def match
    if issue[:answer] == candidate_issues
      
    end
  end
end
