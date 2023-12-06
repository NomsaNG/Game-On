class CommunitiesController < ApplicationController
  before_action :authenticate_user!

  def new
    @community = Community.new
  end

  def create
    @community = Community.new(community_params)

    if @community.save
      Chatroom.create(name: @community.name, community_id: @community.id)
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
    @upcoming_games = @community.games.where('game_date >= ?', Date.today).order(:game_date)
    @chatroom = @community.chatroom
    @message = Message.new
  end

  private

  def community_params
    params.require(:community).permit(:name, :description, :visibility)
  end
end
