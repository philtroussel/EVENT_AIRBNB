class FavoriteVenuesController < ApplicationController
  # before_action :set_venue
  def index
    @favorites = policy_scope(Favorite)
  end

  def create
    @venue = Venue.find(params[:venue_id] || params[:id])
    authorize @venue
    if Favorite.create(favorited: @venue, user: current_user)
      redirect_to @venue, alert: 'Venue has been saved'
    else
      redirect_to @venue, alert: 'Something went wrong. Cannot help you. Sorry'
    end
  end

  def destroy
    @venue = Venue.find(params[:venue_id] || params[:id])
    @favorite = Favorite.where(favorited_id: @venue.id, user_id: current_user.id).first.destroy
    authorize @favorite
    redirect_to @venue, notice: 'Venue has been removed from favorites'
  end

  # private

  # def set_venue
  # @venue = Venue.find(params[:venue_id] || params[:id])
  # authorize @venue
  # end
end
