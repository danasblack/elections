class BallotsController < ApplicationController
    def create
    @ballotcandidates = current_user.ballot_candidates.where(status: 'added')

    ballot = Ballot.create(
      name: name,
    )

    @ballotcandidates.update_all(status: "added", ballot_id: ballot.id)

    redirect_to "/ballots/#{ballot.id}"
    end

    def show
      @ballot = Ballot.find_by(id: params[:id])
      render 'show.html.erb'
    end
end
