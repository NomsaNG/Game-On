class ChatroomsController < ApplicationController
  def index
    user_communities = current_user.communities
    user_games = current_user.games

    chatrooms_from_communities = Chatroom.where(community: user_communities)
    chatrooms_from_games = Chatroom.left_outer_joins(:game).where(games: { id: user_games })

    @chatrooms = (chatrooms_from_communities + chatrooms_from_games).uniq { |chatroom| chatroom.id }
    @chatrooms.sort_by! { |chatroom| chatroom.updated_at }.reverse!
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
