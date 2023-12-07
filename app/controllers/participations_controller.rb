class ParticipationsController < ApplicationController
  def create
    @game = Game.find(params[:id])
    @user = current_user
    @participation = Participation.new(game: @game, user: @user)
    @participation.save
    redirect_to chatroom_path(@game.chatroom)
  end

  def destroy
  end
end
