class SweetsController < ApplicationController

  def top
  end

  def index
     @sweet = Sweet.all
  end

  def new
  end

  def create
  end
  

end
