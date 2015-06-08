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
    @post = Post.find(params[:id])
      
    @comments = @post.comments.create(params.require(:id)
      .permit(:content, :author))
    redirect_to post_path(@post)
  end
end
