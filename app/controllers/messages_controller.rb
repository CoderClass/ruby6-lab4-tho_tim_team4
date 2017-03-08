class MessagesController < ApplicationController
  before_action :set_room
  def index
    @messages = @room.messages
  end

  def create
    @message = Message.create! message_params
    redirect_to room_messages_path(@room)
  end

  private

  def set_room
    @room = Room.find_by(id: params[:room_id])
  end

  def message_params
    params.require(:message).permit(:room_id, :content, :username)
  end
end
