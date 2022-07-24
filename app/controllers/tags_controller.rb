class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    # raise "hell"
    @tag = Tag.find params[:id]
  end

  def follow
    tag = Tag.find params[:id]
    @current_user.tags << tag
    redirect_to tags_path
  end

  def new
  end
end
