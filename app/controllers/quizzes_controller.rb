class QuizzesController < ApplicationController
  def index
      @questions = Question.all
      @answers = Answer.all
    render 'index.html.erb'
  end
end

