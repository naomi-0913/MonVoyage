class MemoriesController < ApplicationController
  before_action :set_memory, only: [:edit, :update, :destroy, :show]

  def index
    @memories = Memory.all.limit(6).order('created_at DESC')
  end

  def show
    @like = Like.find_by(user_id: current_user.id, memory_id: params[:memory_id])
    @likes = Like.where(memory_id: @memory.id)
  end

  def new
    @memory = Memory.new
  end

  def edit
  end

  def create
    @memory = Memory.new(memory_params)
    if @memory.save 
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def update
    respond_to do |format|
      if @memory.update(memory_params)
        format.html { redirect_to @memory, notice: 'Memory was successfully updated.' }
        format.json { render :show, status: :ok, location: @memory }
      else
        format.html { render :edit }
        format.json { render json: @memory.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @memory.destroy
    respond_to do |format|
      format.html { redirect_to memories_url, notice: 'Memory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_memory
      @memory = Memory.find(params[:id])
    end

    def memory_params
      params.require(:memory).permit(:country, :city, :date, :image, :content).merge(user_id: current_user.id)
    end

    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end
  
end
