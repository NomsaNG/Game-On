class GamesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @game = Game.new
    @sports = Game::VALID_SPORTS
  end

  def create
    @game = Game.new(game_params)

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
