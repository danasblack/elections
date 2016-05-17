class BallotCandidatesController < ApplicationController
  def create
    if current_user
      name = params[:name]

      @ballotcandidates = BallotCandidate.create(
        party_candidate_id: params[:party_candidate_id],
        local_candidate_id: params[:local_candidate_id],
        user_id: current_user.id 
      )
      flash[:success] = "Candidate added to your ballot"
      redirect_to '/ballotcandidates' 
    else
      redirect_to '/elections'
    end
  end 

  def index
    @ballotcandidates = BallotCandidate.all
  end
end
