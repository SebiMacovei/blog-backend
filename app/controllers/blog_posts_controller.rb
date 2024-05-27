class BlogPostsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    blog_post = BlogPost.find_all
    render json:  blog_post
  end

  def create
    post = BlogPost.create(post_params)
    render json: post
  end

  def update
    post = BlogPost.find_by(id: params[:id])
    post.update(post_params)
    render json: post
  end

  def destroy
    post_id = params[:id]
    post = BlogPost.destroy_by(id: post_id)
    render json: post
  end

  private
  def post_params
    params.require(:blog_post).permit(:title, :content, :views)
  end

  public
end
