class GamesController < ApplicationController
  def index
  end

  def show
    @game = Game.find(params[:id])
    @community = @game.community
    @venue = @game.venue
    @users = @game.users
    @sport = @game.sport
    @start_time = @game.start_time
    @capacity = @game.capacity
    @description = @game.description
    @visibility = @game.visibility
  end

  def new
    @game = Game.new
    @sports = Game::VALID_SPORTS
    @venues = Venue.all.limit(5)
  end

  def create
    @game = Game.new(game_params)
    @venues = Venue.all.limit(5)

    if @game.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def game_params
    params.require(:game).permit(:name, :description, :visibility, :community_id, :capacity, :venue_id, :sport, :start_time)
  end
end
