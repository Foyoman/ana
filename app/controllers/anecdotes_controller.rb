class AnecdotesController < ApplicationController
  def index
    @anecdotes = Anecdote.all
  end

  def show
  end

  def new
    @anecdote = Anecdote.new
  end

  def create
    anecdote = Anecdote.create anecdote_params
  end

  def edit
  end

  private
  def mixtape_params
    params.require(:anecdote).permit(:title, :content, :tag)
  end
end
