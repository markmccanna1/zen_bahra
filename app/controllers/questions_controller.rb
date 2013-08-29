class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(params[:question])

    redirect_to questions_path
  end
end
