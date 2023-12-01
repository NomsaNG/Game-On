class CommunitiesController < ApplicationController
  before_action :authenticate_user!

  def new
    @community = Community.new
  end

  def create
    @community = Community.new(community_params)

    if @community.save
      redirect_to communities_path, notice: 'Community created successfully.'
    else
      render :new
    end
  end


  def index
    @communities = Community.all
  end

  def show
    @community = Community.find(params[:id])
    @upcoming_games = @community.games.where('game_date >= ?', Date.today).order(:date)
    @leaderboard = @community.leaderboards.order(total_games: :desc)
  end

  private

  def community_params
    params.require(:community).permit(:name, :description, :visibility)
  end
end
