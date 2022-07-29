class AnecdotesController < ApplicationController
  before_action :check_for_login, :only => [:new, :create, :edit, :upvote, :downvote]
  
  def index
    @anecdotes = Anecdote.all.order(:upvotes).reverse
    if @current_user.present?
      if @current_user.sort == 'new'
        @anecdotes = @anecdotes.sort.reverse
      end
    end
  end

  def show
    @anecdote = Anecdote.find params[:id]
    @comments = @anecdote.comments.sort
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
    redirect_to anecdotes_path
  end

  def edit
    @anecdote = Anecdote.find params[:id]
  end

  def update
    anecdote = Anecdote.find params[:id]
    anecdote.update anecdote_params
    tag_ids = params[:anecdote][:tag_ids].reject(&:empty?)
    tag_ids.map(&:to_i).each do |tag_id|
      tag = Tag.find tag_id
      anecdote.tags << tag
    end
    redirect_to anecdote
  end

  def destroy
    anecdote = Anecdote.find params[:id]
    anecdote.destroy
    redirect_to anecdotes_path
  end

  def upvote
    anecdote = Anecdote.find params[:id]
    
    if @current_user.voted_for? anecdote
      anecdote.unliked_by @current_user 
    else
      anecdote.liked_by @current_user
    end
    
    anecdote.upvotes = anecdote.get_upvotes.size
    anecdote.save
    session[:return_to] ||= request.referer
    redirect_to session.delete(:return_to)

    # redirect_to anecdotes_path
  end

  def downvote
    anecdote = Anecdote.find params[:id]
    anecdote.downvote_from @current_user
    redirect_to anecdotes_path
  end

  private
  def anecdote_params
    params.require(:anecdote).permit(:title, :content, :tag_ids)
  end
end
