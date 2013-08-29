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

	def destroy

	end
end
