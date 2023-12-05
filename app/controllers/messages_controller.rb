class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id] || message_params[:chatroom_id])


    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    if params[:game_id]
      @game = Game.find(params[:game_id])
      @message.game = @game
    end
    @message.sender = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: {message: @message})
      )
      redirect_to chatroom_path(@chatroom)
    else
      render "chatrooms/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :chatroom_id, :game_id)
  end
end
