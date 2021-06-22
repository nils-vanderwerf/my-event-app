class EventsController < ApplicationController
    before_action :authenticate_user!, only: %i[new create show destroy]

    def index
        @events = Event.all
    end

    def show
        @event = Event.find_by(id: params[:id])
    end

    def new
        @event = Event.new
    end

    def create
      #Build returns a new object of the collection type that has been instantiated with attributes and linked to this object, but have not yet been saved
      @event = current_user.hosted_events.build(event_params)
      if @event.save
        redirect_to @event, notice: "Your event was created"
      else
        render :new
      end
    end

    def edit 
        @event = Event.find(params[:id])
    end

    def update
      @event = Event.find(params[:id])
      if @event.update(event_params)
        redirect_to @event, notice: "Your event was updated"
      else
        render :edit
      end
    end

    def destroy
        @event = Event.find(params[:id])
        @event.destroy
        redirect_to events_path
    end
    
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



    private

    def event_params
        params.require(:event).permit(:name, :start_date, :end_date, :start_time, :end_time, :location, :description)
    end
end