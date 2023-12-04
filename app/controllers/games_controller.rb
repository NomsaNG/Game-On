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
    @communities = Community.all
  end

  def create
    @game = Game.new(game_params)
    @communities = Community.all
    @venues = Venue.all.limit(5)

    if @game.save
      Chatroom.create(name: @game.name, game_id: @game.id)
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def rules
  end

  def edit
  end

  def update
  end

  def destroy
    if @game.destroy
      flash[:notice] = "Game was successfully deleted."
      redirect_to games_path
    else
      flash[:alert] = "There was a problem deleting the game."
      redirect_to game_path(@game)
    end
  end

  private

  def game_params
    params.require(:game).permit(:name, :description, :visibility, :community_id, :capacity, :venue_id, :sport, :start_time, :game_date)
  end

  def set_game
    @game = Game.find(params[:id])
  end

  def check_authorization
    unless current_user == @game.user
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to games_path
    end
  end
end
