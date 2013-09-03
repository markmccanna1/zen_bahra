class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def new
    render new_question_url
    @answer = Answer.new
  end

  def create
    question = Question.find(params[:question_id])
    if current_user && current_user.id = session[:user_id]
      answer = question.answers.create(body: params[:body])
      if request.xhr?
        redirect_to questions_url
      else
        render new_user_url
      end
    end
  end
end
