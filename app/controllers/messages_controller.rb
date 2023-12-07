class MessagesController < ApplicationController
  def create
    @community = Community.find(params[:community_id]) if params[:community_id]
    if params[:chatroom_id]
      @chatroom = Chatroom.find(params[:chatroom_id] || message_params[:chatroom_id])
    else
      @chatroom = @community.chatroom
    end


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
        render_to_string(partial: "message", locals: { message: @message })
      )
      respond_to do |format|
        format.html { redirect_to params[:redirect_path] || default_redirect_path }
        format.js   { head :ok }
      end
    else
      render "chatrooms/show", status: :unprocessable_entity
    end
  end

  def share
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

  def index
    @chatroom = Chatroom.find(params[:chatroom_id])
    # @messages = Message.where(chatroom_id: params[:chatroom_id])
    @messages = @chatroom.messages.includes(:sender)
    render json: @messages, include: :sender
  end

  private

  def default_redirect_path
    chatroom_path
  end

  def message_params
    params.require(:message).permit(:content, :chatroom_id, :game_id)
  end

end
