class PagesController < ApplicationController
  def home
    @anas = Ana.all
    @anecdotes = Anecdote.all
    @unique_anecdotes = []
    if @current_user.present? then 
      @current_user.tags.each do |tag|
        tag.anecdotes.each do |anecdote|
          @unique_anecdotes << anecdote unless @unique_anecdotes.include? anecdote
        end
      end
    end
  end
end
