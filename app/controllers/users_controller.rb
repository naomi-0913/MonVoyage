class UsersController < ApplicationController
  
  def show 
    @user =User.find(params[:id])
    @memory =Memory.where(user_id: @user.id)
  end
end
