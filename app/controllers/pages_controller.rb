class PagesController < ApplicationController
  def home
    @anecdotes = Anecdote.all.order(:upvotes).reverse
    @unique_anecdotes = []
    if @current_user.present? then 
      @current_user.tags.each do |tag|
        tag.anecdotes.each do |anecdote|
          @unique_anecdotes << anecdote unless @unique_anecdotes.include? anecdote
          end
        end
      end
    # @unique_anecdotes.flatten!
    # @unique_anecdotes = @unique_anecdotes.sort.reverse
    @unique_anecdotes.sort_by! &:upvotes
  end
end