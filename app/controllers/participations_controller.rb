class ParticipationsController < ApplicationController
  def create
    @game = Game.find(params[:id])
    @user = current_user
    @participation = Participation.new(game: @game, user: @user)
    @participation.save
    redirect_to user_path(current_user)
  end

  def destroy
  end
end
