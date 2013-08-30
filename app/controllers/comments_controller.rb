class CommentsController < ApplicationController

	def index
    @comments = Comment.all
	end

	def new
    @comment = Comment.new
	end

  def create
    # @commentable = Question.find(params[:question_id]) || Answer.find(params[:answer_id])
    @comment = Comment.create(params[:comment])
    redirect_to comments_path
  end

  def question_comment
    @question = Question.find(params[:question_id])
    @comment = @question.comments.create(params)
    return "hello"
  end

  def answer_comment
  end

	

	def destroy

	end
end
