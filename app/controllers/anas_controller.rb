class AnasController < ApplicationController
  def index
    @anas = Ana.all
  end

  def show
    @ana = Ana.find params[:id]
  end

  def new
    @ana = Ana.new
  end

  def create 
    ana = Ana.create ana_params
    @current_user.anas << ana
    ana.anecdotes 

    tag_ids = params[:ana][:tag_ids].reject(& :empty?)
    tag_ids.map(&:to_i).each do |tag_id|
      tag = Tag.find tag_id
      tag.anecdotes.each do |anecdote|
        ana.anecdotes << anecdote unless ana.anecdotes.include? anecdote
      end
    end

    ana.anecdotes.each do |anecdote|
      anecdote.tags.each do |tag|
        ana.tags << tag unless ana.tags.include? tag
      end
    end

    redirect_to ana
  end

  def edit
  end

  private
  def ana_params
    params.require(:ana).permit(:title, :tag_ids)
  end
end
