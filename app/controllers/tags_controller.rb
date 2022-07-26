class TagsController < ApplicationController
  def index
    @tags = Tags.all.order.name
  end

  def show
    @tag = Tag.find params[:id]
  end

  def new
  end
end
