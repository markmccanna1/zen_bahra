class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    if request.xhr?
      tags_arr = params[:tag].split(', ')
      question = current_user.questions.create(title: params[:title], 
                                               body: params[:body])
      tags_arr.each do |tag|
        question.tags.create(name: tag, description: "required") unless Tag.find_by_name(tag)
      end
      render text: "#{question.id}" and return
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
