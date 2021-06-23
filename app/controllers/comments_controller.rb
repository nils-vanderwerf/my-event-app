class CommentsController < ApplicationController
    before_action :find_event

    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)
        @comment.commented_event_id = @event.id
        @comment.user_id = current_user.id
        

        if @comment.save
            redirect_to event_path(@event)
        else
            render 'new'
        end
    end


    private

    def comment_params
        params.require(:comment).permit(:content)
    end
    
    def find_event
        @event = Event.find(params[:event_id])
    end
end
