class SuspectsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
    def new
      @tip = Tip.find(params[:tip_id])
      @suspect = Suspect.new
    end

    def create
      @tip = Tip.find(params[:tip_id])
      @suspect = @tip.suspects.create(suspect_params)
      redirect_to tip_path(@tip)
    end

    def edit
      @tip = Tip.find(params[:tip_id])
      @suspect = Suspect.find(params[:id])
    end

    def update
      @tip = Tip.find(params[:tip_id])
      @suspect = Suspect.find(params[:id])
      if @tip.user == current_user && !@tip.user.nil?
      @suspect.update(suspect_params)
    else
      flash[:alert] = "Only the person that provided the tip can edit it."
    end
      redirect_to tip_path(@tip)
    end

    def destroy
      @tip = Tip.find(params[:tip_id])
      @suspect = Suspect.find(params[:id])
      if @tip.user == current_user && !@tip.user.nil?
      @suspect.destroy
    else
      flash[:alert] = "Only the person that provided the tip can delete it."
    end
      redirect_to tip_path(@tip)
    end

    private
    def suspect_params
      params.require(:suspect).permit(:img_url,:race,:gender,:height,:weight,:hair,:clothing,:weapons,:vehicle,:year,:make,:model,:color,:license,:state,:description,:tip_id)
    end
end
