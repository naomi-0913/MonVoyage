class LikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, memory_id: params[:memory_id])
    @likes = Like.where(memory_id: params[:memory_id])
    @memories = Memory.all
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, memory_id: params[:memory_id])
    like.destroy
    @likes = Like.where(memory_id: params[:memory_id])
    @memories = Memory.all
  end
end

