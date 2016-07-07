class CommentsController < ApplicationController
  before_action :comments_params, except: [:index]

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comments_params)
    redirect_to root_url
  end

  private

  def comments_params
    params.require(:comment).permit(:body)
  end
end
