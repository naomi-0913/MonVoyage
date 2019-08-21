class LikesController < ApplicationController
  before_action :set_memory

  def create
    @like = Like.create(user_id: current_user.id, memory_id: params[:memory_id])
    @memory.reload
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, memory_id: params[:memory_id])
    like.destroy
    @memory.reload
  end

  private 
  def set_memory
    @memory = Memory.find(params[:memory_id])
  end


end

