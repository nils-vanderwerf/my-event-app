class RsvpsController < ApplicationController
    def rsvp
        @event = Event.find(params[:id])
        if @event.guests.include?(current_user)
          redirect_to @event, notice: "You are already on the list"
        else
          @event.guests << current_user
          redirect_to @event
        end
      end
    
      def cancel_rsvp
        @event = Event.find(params[:id])
        @event.guests.delete(current_user)
        redirect_to @event, notice: "You are no longer attending this event"
      end
end
