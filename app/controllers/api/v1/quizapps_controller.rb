class Api::V1::QuizappsController < ApplicationController
  def index
    @issues = Issue.all
    render 'index.json.jbuilder'
  end

  def create
    params[:issues].each do |issue|
      puts issue[:id]
      puts issue[:question]
      puts issue[:answer]
    end
    render json: {message: "Success"}
    # if issues.match
    #   render "create.html.erb"
    # end
  end
end

