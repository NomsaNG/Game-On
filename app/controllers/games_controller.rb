class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  before_action :check_authorization, only: [:edit, :update, :destroy]


  def index
  end

  def past_games
    @past_games = current_user.participated_games.past
  end

  def upcoming_games
    @upcoming_games = current_user.participated_games.upcoming
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
      redirect_to game_path(@game)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def rules
  end

  def edit
    @game = Game.find(params[:id])
    @communities = Community.all
    @venues = Venue.all.limit(5)
  end

  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      redirect_to game_path(@game), notice: 'Game was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to root_path, notice: 'Game was successfully deleted.'
  end

  private

  def game_params
    params.require(:game).permit(:name, :description, :visibility, :community_id, :capacity, :venue_id, :sport, :start_time, :game_date)
  end

  def set_game
    @game = Game.find(params[:id])
  end

  def check_authorization
    unless current_user.participations.exists?(game_id: @game.id, is_creator: true)
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to games_path
    end
  end
end
