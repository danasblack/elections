class LocalcandidatesController < ApplicationController
   def show
    local_candidate_id = params[:id]
    @localcandidate = LocalCandidate.find_by(id: local_candidate_id)
    render 'show.html.erb'
  end  
end
