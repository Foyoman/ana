class TagsController < ApplicationController
  def index
    @tags = Tag.all.order :name
  end

  def show
    @tag = Tag.find params[:id]
    @tag_anecdotes = @tag.anecdotes.order(:upvotes).reverse
    if @current_user.present?
      if @current_user.sort == 'new'
        @tag_anecdotes = @tag_anecdotes.sort.reverse
      end
    end
  end

  def new
  end
end
