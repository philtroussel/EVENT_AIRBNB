class CateringsController < ApplicationController
  def index
    caterings = policy_scope(Catering)
    @caterings = Catering.all
  end

  private

  def find_catering
    @catering = Catering.find(params[:id])
  end

  def catering_params
    params.require(:catering).permit(:name, :type, :description, :address)
  end
end
