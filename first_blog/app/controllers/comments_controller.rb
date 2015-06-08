class CommentsController < ApplicationController
  
  def new
  	@comment = Comment.new
  	@post = Post.find(params[:id])
  end

  def edit
  end

  def show
  end

  def index
  	@comment = Comments.all
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params.require(:comment)
      .permit(:content, :author))
    redirect_to posts_path(@post)
  end
end
