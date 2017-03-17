class CommentsController < ApplicationController

	before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

end
