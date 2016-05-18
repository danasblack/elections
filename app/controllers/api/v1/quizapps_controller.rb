class Api::V1::QuizappsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @issues = Issue.all
    render 'index.json.jbuilder'
  end

  def create
    UserIssue.where(user_id: current_user.id).destroy_all
    params[:issues].each do |issue|
      UserIssue.create(
        user_id: current_user.id,
        issue_id: issue[:id],
        value: issue[:answer]
      )
    end
    render json: {message: "Success"}
    # if issues.match
    #   render "create.html.erb"
    # end
  end
end