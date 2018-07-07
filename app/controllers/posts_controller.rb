class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    post_params.each {|k, v| @post[k] = v}

    @post.valid? ? ( @post.save; redirect_to post_path(@post) ) : ( render :edit )

  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
