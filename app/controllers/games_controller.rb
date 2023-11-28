class GamesController < ApplicationController
  def index
  end

  def show
  end

  def join
  end

  def new
    @game = Game.new
    @venues = Venue.all
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      @game.participations.create(user: current_user, is_creator: true)
      render json: { success: true }
    else
      render json: { errors: @game.errors.full_messages }, status: :unprocessable_entity
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
    params.require(:game).permit(:name, :sport, :start_time, :venue_id, :visibility, :capacity, :description)
  end
end
