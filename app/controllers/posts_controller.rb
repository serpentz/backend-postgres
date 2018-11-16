class PostsController < ApplicationController
    
  def index

    render json: Post.all
    # render "[]"
  end

  def show
    render json: Post.find(params[:id])
  end

  def create
    render json: Post.create(post_params)
  end

  def update
    post.find(params[:id]).update(post_params)
    render json: Post.find(params[:id])
  end

  def destroy
    render json: Post.find(params[:id]).destroy
  end
  
  
  def add
    binding.pry
    Post.find(params[:id]).users << User.find(params[:user_id])
    render json: Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:text, :url, :user_id)
  end

end

