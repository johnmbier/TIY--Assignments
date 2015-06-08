class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def show
  	@post = Post.find(params[:id])
  	@comment = Comment.new
  end

  def new
  	@post = Post.new
  end

  def create
    Post.create(params.require(:post)
      .permit(:title, :content, :author))
    @comment = Comment.new
    redirect_to posts_url
  end

  def update
    @post = Post.find(params[:id])
    @post.update(params.require(:post)
      .permit(:title, :content, :author))
    redirect_to posts_path(@post)
  end

  #def destroy
  	#@post = Post.find(params[:id]).destroy
  	#redirect_to posts_url
  #end	
end
