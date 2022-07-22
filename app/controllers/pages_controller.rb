class PagesController < ApplicationController
  def home
    @anas = Ana.all
  end
end
