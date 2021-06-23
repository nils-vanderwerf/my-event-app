class CommentsController < ApplicationController
    before_action :find_event

    def new 
    def create
        @comment = Comment.new(comment_params)
        @comment.user_id = current_user.id
        @comment.commented_events = @event.id

        if @comment.save
            redirect_to events_path(@event)
        else
            render 'new'
        end
    end


    private

    def comment_params
        params.require(:comment).permit(:content)
    end
    
    def find_event
        @event = Event.find(params[:commented_events_id])
    end
end
