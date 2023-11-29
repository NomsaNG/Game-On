class GamesController < ApplicationController
  def index
    if params[:query].present?
      @games = Game.search_by_keyword(params[:query])
    else
      @games = Game.all
    end

    @games = filter_by_category(@games, params[:category]) if params[:category].present?
  end

  def show
  end

  def join
  end

  def create
    #THis is where we will write the create action
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def filter_by_category(games, category)
    return games if category == 'all'

    games.select { |game| game.sport.downcase == category.downcase }
  end
end
