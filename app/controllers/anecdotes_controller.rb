class AnecdotesController < ApplicationController
  def index
    @anecdotes = Anecdote.all
  end

  def show
    @anecdote = Anecdote.find params[:id]
  end

  def new
    @anecdote = Anecdote.new
    @tags = Tag.all
  end

  def create
    anecdote = Anecdote.create anecdote_params
    tag_ids = params[:anecdote][:tag_ids].drop 1
    tag_ids.map(&:to_i).each do |tag_id|
      tag = Tag.find tag_id
      anecdote.tags << tag
    end
    redirect_to anecdote
  end

  def edit
  end

  private
  def anecdote_params
    params.require(:anecdote).permit(:title, :content, :tag_ids)
  end
end
