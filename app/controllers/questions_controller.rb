class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    current_user.questions.create(params[:question])
    redirect_to questions_path
  end

  def show
    @question = Question.find(params[:id])
    @user = @question.user
  end
end
