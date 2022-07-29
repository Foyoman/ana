class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index] # :check_for_login, :except => [:index] to have users who aren't logged in able to view the index
  
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @tags = Tag.all
    @themes = Theme.all
    @current_theme = @current_user.theme.name if @current_user.theme.present?
  end

  def update
    @current_user.tags.delete_all
    tag_ids = params[:user][:tag_ids].reject(&:empty?)
    tag_ids.map(&:to_i).each do |tag_id|
      tag = Tag.find tag_id
      @current_user.tags << tag
    end

    @current_user.sort = params[:user][:sort]

    theme = Theme.find_by_name params[:user][:theme]
    @current_user.theme = theme unless theme.nil?

    @current_user.save
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :theme)
  end
end
