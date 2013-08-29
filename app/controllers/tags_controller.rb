class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def new
    @tag= Tag.new
  end

  def create
    # @commentable = Question.find(params[:question_id]) || Answer.find(params[:answer_id])
    @tag = Tag.create(params[:tag])
    redirect_to comments_path
  end

  def destroy

  end
end
