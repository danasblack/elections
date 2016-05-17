class ElectionsController < ApplicationController
  def index
    @candidates = PartyCandidate.all
    @localcandidates = LocalCandidate.all 
    render 'index.html.erb'
  end 

  def show
    candidate_id = params[:id]
    @candidate = PartyCandidate.find_by(id: candidate_id)
    render 'show.html.erb'
  end 
end
