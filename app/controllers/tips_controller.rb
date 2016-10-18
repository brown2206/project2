class TipsController < ApplicationController
  def index
    @tips = Tip.all
  end

  def new
    @tip = Tip.new
  end

  def create
    @tip = Tip.create!(tip_params.merge(user: current_user))
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
    if @tip.user == current_user && !@tip.user.nil?
    @tip.update(tip_params)
  else
    flash[:notice] = "Please don't edit someone else's tip."
  end
  redirect_to tip_path(@tip)
  end

  def destroy
    @tip = Tip.find(params[:id])
    if @tip.user == current_user && !@tip.user.nil?
    @tip.destroy
  else
    flash[:alert] = "Only the creator of the tip can delete it."
  end
    redirect_to tips_path
  end

  private
  def tip_params
    params.require(:tip).permit(:offense, :location, :img_url)
  end
end
