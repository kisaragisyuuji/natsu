class SweetsController < ApplicationController

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
  
  def sweet_params
    params.require(:sweet).permit(:name, :image, :description).merge(user_id: current_user.id)
  end

end
