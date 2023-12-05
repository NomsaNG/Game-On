class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @message = Message.new
    user_communities = current_user.communities
    user_games = current_user.games

    chatrooms_from_communities = Chatroom.where(community: user_communities)
    chatrooms_from_games = Chatroom.left_outer_joins(:game).where(games: { id: user_games })
    

    if params[:query].present?
      @games = Game.search_by_keyword(params[:query])
    else
      @games = Game.all
    end
    @games = filter_by_category(@games, params[:category]) if params[:category].present?
  end

  private

  def filter_by_category(games, category)
    return games if category == 'all'

    games.select { |game| game.sport.downcase == category.downcase }
  end
end
