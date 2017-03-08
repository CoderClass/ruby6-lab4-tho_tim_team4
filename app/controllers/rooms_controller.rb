class RoomsController < ApplicationController

  def create
    @room = Room.create room_params
    if @room.save
      flash[:success] = "Room Created"
      redirect_to @room
    else
      flash[:error] = "Try again"
      render 'index'
    end
  end

  def show
    @room = Room.find_by(id: params[:id])
    redirect_to room_messages_path(@room)
  end


  private

  def room_params
    params.require(:room).permit(:name)
  end
end
