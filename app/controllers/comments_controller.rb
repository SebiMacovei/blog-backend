class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    comment = Comment.create(post_params)
    render json: comment
  end

  def update
    comment = Comment.find_by(id: params[:id])
    comment.update(post_params)
    render json: comment
  end

  def destroy
    comment = Comment.destroy_by(id: params[:id])
    render json: comment
  end

  private
  def post_params
    params.require(:comment).permit(:content, :blog_post_id)
  end
end
