class SweetsController < ApplicationController

  def index
    # 一覧する予定
    @sweet = Sweet.all
  end

end
