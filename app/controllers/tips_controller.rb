class TipsController < ApplicationController
  def index
    @tips = Tip.all
  end

  def new
    @tip = Tip.new
  end

  def create
    @tip = Tip.create!(tip_params)
    redirect_to tip_path(@tip)
  end

  def show
    @tip = Tip.find(params[:id])
  end

  def edit
    @tip = Tip.find(params[:id])
  end

  def update
    @tip = Tip.find(params[:id])
    @tip.update(tip_params)
    redirect_to tip_path(@tip)
  end

  def destroy
    @tip = Tip.find(params[:id])
    @tip.destroy
    redirect_to tips_path
  end

  private
  def tip_params
    params.require(:tip).permit(:offense, :location, :img_url)
  end
end
