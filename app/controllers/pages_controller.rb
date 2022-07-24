class PagesController < ApplicationController
  def home
    @anas = Ana.all
    # @anecdotes = @current_user.anecdotes if @current_user.present?
  end
end
