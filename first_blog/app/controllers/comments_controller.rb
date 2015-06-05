class CommentsController < ApplicationController
  def new
  	@comments = Comment.new
  end

  def edit
  end

  def show
  end

  def index
  end

  def create
    Comment.create(params.require(:comment)
      .permit(:post_id, :content, :author))
    redirect_to posts_url
  end
end
