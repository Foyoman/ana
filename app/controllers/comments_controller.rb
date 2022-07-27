class CommentsController < ApplicationController
    before_action :check_for_login, :only => [:new, :create, :destroy] 

    def index 
        @comments = Comment.all
    end
    
    def show
    end

    def new
        @anecdote = Anecdote.find params[:anecdote_id]
        @comment = @post.comments.new parent_id: params[:parent_id], user_id: params[:user_id]
    end

    def create 
        @anecdote = Anecdote.find params[:anecdote_id]
        @comment = @anecdote.comments.new comment_params
        @comment.user_id = @current_user.id

        respond_to do |format|
            if @comment.save
                format.html { redirect_to @anecdote }
            else
                format.html { render :new }
            end
        end

        redirect_to @anecdote
    end

    def update
    end

    def destroy
        comment = Comment.find params[:id]
        comment.destroy
        respond_to do |format|
          format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
          format.json { head :no_content }
        end
    end

    private

    def set_comment
        @comment = Comment.find params[:id]
    end
    
    def comment_params
        params.require(:comment).permit(:content, :anecdote_id, :parent_id, :user_id)
    end
end
