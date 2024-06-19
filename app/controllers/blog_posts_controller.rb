class BlogPostsController < ApplicationController
  before_action :authenticate_user!
  def index
    blog_post = BlogPost.all
    render json:  blog_post
  end

  def find_by_id
    blog_post = BlogPost.find(params[:id])
    render json:blog_post.to_json(:include => {
      :comments => {
        :include => :user},
      :user => {}
    })
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
    params.require(:blog_post).permit(:title, :content, :views, :author)
  end
end
