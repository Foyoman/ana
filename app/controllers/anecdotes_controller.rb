class AnecdotesController < ApplicationController
  before_action :check_for_login, :only => [:new, :create, :edit]
  
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
    @current_user.anecdotes << anecdote
    tag_ids = params[:anecdote][:tag_ids].reject(&:empty?)
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
