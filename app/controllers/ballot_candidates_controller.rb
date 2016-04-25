class BallotCandidatesController < ApplicationController
  BallotCandidatesController
  def create
    if current_user
      name = params[:name]

      @ballotcandidates = BallotCandidate.create(
        party_candidate_id: params[:party_candidate_id],
        user_id: current_user.id, 
      )
      flash[:success] = "Candidate added to your ballot"
      redirect_to '/ballotcandidates' 
    else
      redirect_to '/elections'
    end
  end 

  def index
    @ballotcandidates = current_user.ballot_candidates
    @partycandidate = PartyCandidate.all
    render 'index.html.erb'
  end
end
