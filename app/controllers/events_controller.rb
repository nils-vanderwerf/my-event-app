class EventsController < ApplicationController
    def index
        @events = Event.all
    end

    def show
        @event = Event.find_by(id: params[:id])
    end

    def new
            @event = Event.new
            #Build returns a new object of the collection type that has been instantiated with attributes and linked to this object, but have not yet been saved.
            @event = current_user.created_events.build(event_params)
            if @event.save
                redirect_to @event
            else 
                render :new
            end
        end
end
