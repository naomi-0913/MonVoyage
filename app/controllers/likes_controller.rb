class LikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, memory_id: params[:memory_id])
    @likes = Like.where(memory_id: params[:memory_id])
    @memories = Memory.all
  end

  # def create #イイねがつけられる(イイねのレコードがクリエイトされる)
  #   @like = Like.create(user_id: session[:user_id], product_id: params[:product_id])
  #   @likes_btn = Like.find_by(user_id: session[:user_id], product_id: @product_like.id)
  #   @product_like.reload　#リロードする。
  # end

  def destroy
    like = Like.find_by(user_id: current_user.id, memory_id: params[:memory_id])
    like.destroy
    @likes = Like.where(memory_id: params[:memory_id])
    @memories = Memory.all
  end
end

