class Api::V1::QuizappsController < ApplicationController
  def index
    @issues = Issue.all
    render 'index.json.jbuilder'
  end

  def create

    params[:issues].each do |issue|
      UserIssue.create(issue_id: issue[:id], value: issue[:answer])
    end
    render json: {message: "Success"}
    # if issues.match
    #   render "create.html.erb"
    # end
  end

  def answer
    redirect_to '/quizzes/'
  end

end