class TagsController < ApplicationController

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(params[:tag])
    redirect_to tags_path
  end

  def index
    @tags = Tag.all
  end
end
