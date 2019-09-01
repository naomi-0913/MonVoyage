class UsersController < ApplicationController
  
  def show 
    @user =User.find(params[:id])
    @memory =Memory.where(user_id: @user.id)
    @likes = Like.where(user_id: params[:id])
  end
end
