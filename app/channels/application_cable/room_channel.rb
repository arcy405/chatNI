class RoomChannel < ApplicationCable::Channel
    def subscribed
      room = Room.find params[:room]
      stream_for room
  
      # or
      # stream_from "room_#{params[:room]}"
      RoomChannel.perform_later("This is a background job")
    end
  end
  