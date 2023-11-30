class LeaderboardsController < ApplicationController
  def index
    @community = Community.find(params[:community_id])
    @leaderboard = @community.leaderboards.order(total_games: :desc)
  end
end
