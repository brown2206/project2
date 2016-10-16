class TipsController < ApplicationController
  def index
    @tips = Tip.all
  end

  def new
    @tip = Tip.new
  end

  def show
    @tip = Tip.find(params[:id])
  end
end
