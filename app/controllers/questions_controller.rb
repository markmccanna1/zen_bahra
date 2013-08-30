class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    puts "7" * 677
    if request.xhr?
      current_user.questions.create(title: params[:title], body: params[:body])
      render text: "#{Question.last.id}"and return
    else
      current_user.questions.create(params[:question])
      redirect_to questions_path
    end
  end

  def show
    @question = Question.find(params[:id])
    @user = @question.user
  end
end
