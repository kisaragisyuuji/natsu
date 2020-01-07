class SweetsController < ApplicationController
  before_action :set_sweet, only:[:show, :edit, :update, :destroy]
  def top
  end

  def index
    @sweet = Sweet.all
  end

  def new
    @sweet = Sweet.new
  end

  def create
    @sweet = Sweet.new(sweet_params)
    if @sweet.save
      flash[:notice] = '投稿しました'
      redirect_to sweets_path
    else
      flash.now[:alert] = '投稿できませんでした'
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @sweet.update(sweet_params)
      redirect_to sweets_path(params[:id]),notice: '編集しました'
    else
      render = :edit
    end
  end

  
  def destroy
    @sweet.destroy
    redirect_to sweets_path
  end

  def set_sweet
    @sweet = Sweet.find(params[:id])
  end

  def sweet_params
    params.require(:sweet).permit(:name, :image, :description).merge(user_id: current_user.id)
  end

end
