class Api::V1::PostsController < ApplicationController
  include Pagy::Backend
  include CommonResponse
  before_action :set_post, only: [:show, :update, :destroy]

  def index
    pagy, posts = pagy(Post.all, items: params[:per_page] | 20)
    data = {
      posts: posts.map { |post| PostSerializer.new(post).serializable_hash},
      pagy: pagy
    }

    response_success data
  end

  def show
    response_success @post
  end

  def create
    post = Post.new(post_params)
    if post.save
      response_success post
    else
      unprocessable_entity post
    end
  end

  def update
    if @post.update(post_params)
      response_success @post
    else
      unprocessable_entity @post
    end
  end

  def destroy
    if @post.destroy!
      response_success({}, "Delete success")
    else
      unprocessable_entity @post
    end
  end

  private
  def set_post
    @post = Post.find(params[:post][:id])

    not_found unless @post
  end

  def post_params
    params.require(:post).permit(:id, :title, :content)
  end
end
