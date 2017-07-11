class QuizzesController < ApplicationController
  def index
    if current_user == nil
      flash[:alert] = "Please log in before proceeding"
    end
    render "template.html.erb"
  end 
  
  def answer
    @candidates = PartyCandidates.all.shuffle
    redirect_to '/quizzes/result'
  end 

  def result
    @user_issues = UserIssue.where(user_id: current_user.id)
    @candidates = PartyCandidate.all
    @candidate_scores = []
    @candidates.each do |candidate|
      candidate_score = 0
      @user_issues.each do |user_issue|
        candidate_issue = CandidateIssue.find_by(candidate_id: candidate.id, issue_id: user_issue.issue_id)
        candidate_score += 5 - (user_issue.value.to_i - candidate_issue.value.to_i).abs
        if candidate.id == 1
          puts "*" * 30
          # puts 'candidate issue id: ' + candidate_issue
          puts candidate_issue.value
          puts user_issue.value
          puts "*" * 30
        end
      end
      @candidate_scores.push(
        {
          candidate: candidate,
          score: candidate_score
        }
      )
    end
    @candidate_scores.sort_by! { |candidate_score| -candidate_score[:score] }
    render 'result.html.erb'
  end
end
