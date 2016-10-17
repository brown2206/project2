class SuspectsController < ApplicationController
  def index
      @suspects = Suspect.all
    end

    def new
      @tip = Tip.find(params[:tip_id])
      @suspect = Suspect.new
    end

    def create
      @tip = Tip.find(params[:tip_id])
      @suspect = @tip.suspects.create(suspect_params)
      redirect_to @suspect
    end

    def show
      @suspect = Suspect.find(params[:id])
    end

    def edit
      @tip = Tip.find(params[:tip_id])
      @suspect = Suspect.find(params[:id])
    end

    def update
      @suspect = Suspect.find(params[:id])
      @suspect.update(suspect_params)
      redirect_to @suspect
    end

    def destroy
      @suspect = Suspect.find(params[:id])
      @suspect.destroy
      redirect_to suspects_path
    end

    private
    def suspect_params
      params.require(:suspect).permit(:img_url,:race,:gender,:height,:weight,:hair,:clothing,:weapons,:vehicle,:year,:make,:model,:color,:license,:state,:description,:tip_id)
    end
end
