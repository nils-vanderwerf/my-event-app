class CommentsController < ApplicationController
    before_action :find_event, only: [:new, :create]

    def new
        @comment = Comment.new
    end

    def edit 
        @comment = Comment.find(params[:id])
    end

    def update
        @comment = Comment.find(params[:id])
        if @comment.update(comment_params)
          redirect_to Event.find(@comment.commented_event_id), notice: "Your event was updated"
        else
          render :edit
        end
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

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to events_path
    end


    private

    def comment_params
        params.require(:comment).permit(:content)
    end
    
    def find_event
        @event = Event.find(params[:event_id])
    end
end
