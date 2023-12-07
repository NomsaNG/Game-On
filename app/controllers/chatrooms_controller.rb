class ChatroomsController < ApplicationController
  def index
    user_communities = current_user.communities
    user_games = current_user.games

    @chatrooms_from_communities = Chatroom.where(community: user_communities).to_a
    @chatrooms_from_games = Chatroom.left_outer_joins(:game).where(games: { id: user_games }).to_a
    @chatrooms = (@chatrooms_from_communities + @chatrooms_from_games).uniq { |chatroom| chatroom.id }

    @chatrooms_from_communities.sort_by! { |chatroom| chatroom.last_message_timestamp || Time.at(0) }.reverse!
    @chatrooms_from_games.sort_by! { |chatroom| chatroom.last_message_timestamp || Time.at(0) }.reverse!
    @chatrooms.sort_by! { |chatroom| chatroom.last_message_timestamp || Time.at(0) }.reverse!
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

end
