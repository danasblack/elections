class ElectionsController < ApplicationController
  def index
    @candidates = PartyCandidate.all
    render 'index.html.erb'
  end 
end
