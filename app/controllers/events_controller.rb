class EventsController < ApplicationController
    before_action :authenticate_user!, only: %i[new create show]

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
        @event = current_user.hosted_events.build(event_params)
         #Build returns a new object of the collection type that has been instantiated with attributes and linked to this object, but have not yet been saved
         if @event.save
            redirect_to @event, notice: "Your event was created"
          else
            render :new
          end
      end

    def edit 
        @event = Event.find(params[:id])
    end

    def event_params
        params.require(:event).permit(:name, :start_date, :end_date, :start_time, :end_time, :location, :description)
      end
end
